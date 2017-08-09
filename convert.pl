#!/usr/bin/perl

use warnings;

while(<>) {
	chomp;
	if (m|<li id="_(\d+)"><span class="author">([^<]+)</span>: <a class="title" href="https://dh2017.adho.org/abstracts/\d+/\d+.pdf" target="dh2017abstracts">([^<]+)</a> \(<span class="keywords">([^<]+)</span>\)</li>|) {
		my @authors = split(";",$2);
		my $id = $1;
		my @first = split(",",$authors[0]);
		my $citekey = $first[0].":2017dh";
		my $bibstring = "";
		$bibstring .= "\@inproceedings{$citekey,\n";
		$bibstring .= "\tTitle={{$3}},\n";
		$bibstring .= "\tAuthor={".join(" and ",@authors)."},\n";
		$bibstring .= "\tBooktitle={Book of Abstracts of DH2017},\n";
		$bibstring .= "\tUrl={https://dh2017.adho.org/abstracts/$1/$1.pdf},\n";
		$bibstring .= "\tAddress={Montréal, Canada},\n";
		$bibstring .= "\tMonth={August},\n";
		$bibstring .= "\tKeywords={$4},\n";
		$bibstring .= "\tOrganization={Alliance of Digital Humanities Organizations},\n";
		$bibstring .= "\tYear={2017}\n";
		$bibstring .= "}";
		my $title = "$3";
		$title =~ s/[\s[:punct:]\/\(\)\{\}]+/-/g;
		my $filename = $id."_".$first[0]."_".$title;
		open FH, ">bib/$filename.bib";
		print FH $bibstring;
		close FH;
	}
}


