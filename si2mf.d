import std.algorithm;
import std.array;
import std.conv;
import std.datetime;
import std.stdio;
import std.string;
import std.regex;

void main() {
    const now = Clock.currTime;

    stdin
        .byLine
        .until("")
        .map!(line =>
            line
                .replace(ctRegex!(`[,\\]`, "g"), "")
                .replace(" ", ",")
                .replace(ctRegex!"^", now.year.to!string ~ "/")
        )
        .array
        .reverse
        .each!writeln;
}
