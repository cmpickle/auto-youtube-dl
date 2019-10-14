#!/bin/sh

rename 's/_/ /g' /media/youtube/music/*
rename 's/ Official Music Video//gi' /media/youtube/music/*
rename 's/ Music Video//gi' /media/youtube/music/*
rename 's/ Official Video//gi' /media/youtube/music/*
rename 's/ Official Audio//gi' /media/youtube/music/*
rename 's/ Official Lyric Video//gi' /media/youtube/music/*
rename 's/ Lyric Video//gi' /media/youtube/music/*
rename 's/ Lyrics//gi' /media/youtube/music/*
rename 's/ Audio + lyrics//gi' /media/youtube/music/*
rename 's/ with Lyrics//gi' /media/youtube/music/*
rename 's/ with Lyric//gi' /media/youtube/music/*
rename 's/ [HD]//gi' /media/youtube/music/*
rename 's/(lyrics)//gi' /media/youtube/music/*
rename 's/(lyric)//gi' /media/youtube/music/*
rename 's/(lyrics on screen)//gi' /media/youtube/music/*
rename 's/()//gi' /media/youtube/music/*

SAVEIFS=$IFS
IFS=$(echo '\n\b')
for f in `find /media/youtube/music/ -type f -name "*-*.*"`;
do
	mkdir -p /media/youtube/music/$(basename $f | sed -e "s/ -.*//")
 	mv $f /media/youtube/music/$(basename $f | sed -e "s/ -.*//")
done
IFS=$SAVEIFS
