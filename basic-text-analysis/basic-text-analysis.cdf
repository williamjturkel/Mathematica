(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     99854,       2675]
NotebookOptionsPosition[     93283,       2439]
NotebookOutlinePosition[     93739,       2457]
CellTagsIndexPosition[     93696,       2454]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Basic Text Analysis in ",
 StyleBox["Mathematica",
  FontSlant->"Italic"]
}], "Title",
 CellChangeTimes->{{3.562315319001178*^9, 3.562315325939991*^9}}],

Cell[TextData[{
 "William J Turkel\n",
 ButtonBox["http://williamjturkel.net",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://williamjturkel.net"], None},
  ButtonNote->"http://williamjturkel.net"]
}], "Subtitle",
 CellChangeTimes->{{3.562315337323538*^9, 3.5623153530202017`*^9}, {
  3.5623155691604643`*^9, 3.56231556916114*^9}}],

Cell["November 2012", "Subtitle",
 CellChangeTimes->{{3.5623153573081703`*^9, 3.562315359363181*^9}}],

Cell[CellGroupData[{

Cell["Introduction", "Subsection",
 CellChangeTimes->{{3.562315374646595*^9, 3.5623153763098516`*^9}}],

Cell[TextData[{
 "For a couple of years now I have been using ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " as my programming language of choice for my digital history work. For one \
thing, I love working with notebooks, which allow me to mix prose, citations, \
live data, executable code, manipulable simulations and other elements in a \
single document. I also love the generality of ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 ". For any kind of technical work, there is usually a well-developed body of \
theory that is expressed in objects drawn from some branch of mathematics. \
Chances are, ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " already has a large number of high-level functions for working with those \
mathematical objects. The ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " documentation is excellent, if necessarily sprawling, since there are \
literally thousands of commands. The challenge is usually to find the \
commands that you need to solve a given problem. Since few ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " programmers seem to be working historians or humanists dealing with \
textual sources, it can be difficult to figure out where to begin."
}], "Text",
 CellChangeTimes->{{3.5623154449912024`*^9, 3.562315707885*^9}, {
  3.562315749236423*^9, 3.5623158375244703`*^9}, {3.562315913486582*^9, 
  3.562315979602768*^9}, {3.562316050730322*^9, 3.562316058665263*^9}, {
  3.56231611944285*^9, 3.562316238063311*^9}, {3.562316297964085*^9, 
  3.562316337009603*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Using a built-in text", "Subsection",
 CellChangeTimes->{{3.562316429391014*^9, 3.5623164424041758`*^9}}],

Cell[TextData[{
 "As a sample text, we will use the Darwin\[CloseCurlyQuote]s ",
 StyleBox["Origin of Species",
  FontSlant->"Italic"],
 " from ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 "\[CloseCurlyQuote]s built-in example database. ",
 "The ",
 StyleBox["Short",
  FontWeight->"Bold"],
 " command shows a small piece of something large. Here \
we\[CloseCurlyQuote]re asking to see the two lines at the beginning and end \
of this text."
}], "Text",
 CellChangeTimes->{{3.5623165026688747`*^9, 3.562316528320557*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"sample", "=", 
   RowBox[{"ExampleData", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Text\>\"", ",", "\"\<OriginOfSpecies\>\""}], "}"}], "]"}]}],
   ";"}], "\[IndentingNewLine]", 
 RowBox[{"Short", "[", 
  RowBox[{"sample", ",", "2"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513508919942062*^9, 3.5135089448931932`*^9}, {
  3.547013540831665*^9, 3.547013545549033*^9}, {3.5623165384259987`*^9, 
  3.562316547411353*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"\<\"INTRODUCTION. When on board H.M.S. \"\>", 
   "\[Ellipsis]", "\<\" have been, and are being, evolved.\"\>"}],
  Short[#, 2]& ]], "Output",
 CellChangeTimes->{3.562316580525742*^9, 3.562318661125736*^9}]
}, Open  ]],

Cell[TextData[{
 "The ",
 StyleBox["Head",
  FontWeight->"Bold"],
 " command tells us what something is. Our text is currently a ",
 StyleBox["string",
  FontSlant->"Italic"],
 ", an ordered sequence of characters."
}], "Text",
 CellChangeTimes->{{3.5623165637929688`*^9, 3.562316566903736*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Head", "[", "sample", "]"}]], "Input"],

Cell[BoxData["String"], "Output",
 CellChangeTimes->{3.562316580560855*^9, 3.5623186611909113`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Extracting part of a string", "Subsection",
 CellChangeTimes->{{3.5623166192436438`*^9, 3.562316623465918*^9}}],

Cell[TextData[{
 "Suppose we want to work with part of the text.  We can extract the \
Introduction of ",
 StyleBox["Origin",
  FontSlant->"Italic"],
 " by pulling out everything between \[OpenCurlyDoubleQuote]INTRODUCTION\
\[CloseCurlyDoubleQuote] and \[OpenCurlyDoubleQuote]CHAPTER 1\
\[CloseCurlyDoubleQuote]. The command that we use to extract part of a string \
is called ",
 StyleBox["StringCases.",
  FontWeight->"Bold"],
 " Once we have extracted the Introduction, we want to check to make sure \
that the command worked the way we expected. Rather than look at the whole \
text right now, we can use the ",
 StyleBox["Short",
  FontWeight->"Bold"],
 " command to show us about five line of the text. It returns a couple of \
phrases at the beginning and end, using ellipses to indicate the much larger \
portion which we are not seeing."
}], "Text",
 CellChangeTimes->{{3.562316634766395*^9, 3.562316664377317*^9}, {
  3.56231671444033*^9, 3.56231673889585*^9}, {3.562316770676896*^9, 
  3.562316870803382*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"intro", "=", 
   RowBox[{
    RowBox[{"StringCases", "[", 
     RowBox[{"sample", ",", 
      RowBox[{"Shortest", "[", 
       RowBox[{"\"\<INTRODUCTION\>\"", "~~", "__", "~~", "\"\<CHAPTER\>\""}], 
       "]"}]}], "]"}], "\[LeftDoubleBracket]", "1", 
    "\[RightDoubleBracket]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"intro", ",", "5"}], "]"}]}], "Input",
 CellChangeTimes->{{3.547020660149399*^9, 3.547020661360504*^9}, {
   3.5470207626733522`*^9, 3.547020772750098*^9}, {3.547020920187571*^9, 
   3.547020930500083*^9}, 3.547020991733007*^9, {3.547022257876546*^9, 
   3.547022260431181*^9}, 3.547033912735633*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"\<\"INTRODUCTION. When on board H.M.S. 'Beagle,' as naturalist, I \
was much struck with certain fac\"\>", 
   "\[Ellipsis]", "\<\"nced that Natural Selection has been the main but not \
exclusive means of modification. CHAPTER\"\>"}],
  Short[#, 5]& ]], "Output",
 CellChangeTimes->{3.562316682377681*^9, 3.562318661224654*^9}]
}, Open  ]],

Cell[TextData[{
 "Note the use of the ",
 StyleBox["Shortest",
  FontWeight->"Bold"],
 " command in the string matching expression above. Since there are probably \
multiple copies of the word \[OpenCurlyDoubleQuote]CHAPTER\
\[CloseCurlyDoubleQuote] in the text, we have to tell ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " how much of the text we want to match... do we want the portion between \
\[OpenCurlyDoubleQuote]INTRODUCTION\[CloseCurlyDoubleQuote] and the first \
instance of the word, the second, the last? Here are two examples to consider:"
}], "Text",
 CellChangeTimes->{{3.5623167005861263`*^9, 3.5623167043928213`*^9}, {
  3.562316886464653*^9, 3.562316948131661*^9}, {3.5623177572115307`*^9, 
  3.562317826666011*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StringCases", "[", 
  RowBox[{"\"\<bananarama\>\"", ",", 
   RowBox[{"\"\<b\>\"", "~~", "__", "~~", "\"\<a\>\""}]}], "]"}]], "Input",
 CellChangeTimes->{{3.547021599096979*^9, 3.5470216326338797`*^9}, {
  3.547021704529344*^9, 3.547021707601622*^9}}],

Cell[BoxData[
 RowBox[{"{", "\<\"bananarama\"\>", "}"}]], "Output",
 CellChangeTimes->{3.5623164024163513`*^9, 3.562317840946478*^9, 
  3.5623186612573442`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StringCases", "[", 
  RowBox[{"\"\<bananarama\>\"", ",", 
   RowBox[{"Shortest", "[", 
    RowBox[{"\"\<b\>\"", "~~", "__", "~~", "\"\<a\>\""}], "]"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.547021645909419*^9, 3.547021650067978*^9}, {
  3.547021719045865*^9, 3.547021721915296*^9}, {3.547021755014896*^9, 
  3.547021759127054*^9}}],

Cell[BoxData[
 RowBox[{"{", "\<\"bana\"\>", "}"}]], "Output",
 CellChangeTimes->{3.5623164024553547`*^9, 3.562317844964492*^9, 
  3.562318661291707*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
From a string to a list of words\
\>", "Subsection",
 CellChangeTimes->{{3.562317864698525*^9, 3.5623178693126802`*^9}}],

Cell["\<\
It will be easier for us to analyze the text if we turn it into a list of \
words. In order to eliminate punctuation, I am going to get rid of everything \
that is not a word character. Note that doing things this way turns the \
abbreviation H.M.S. into three separate words.\
\>", "Text",
 CellChangeTimes->{{3.562317879441702*^9, 3.562317950618126*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"introList", "=", 
   RowBox[{"StringSplit", "[", 
    RowBox[{"intro", ",", 
     RowBox[{
      RowBox[{"Except", "[", "WordCharacter", "]"}], ".."}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"introList", ",", "4"}], "]"}]}], "Input",
 CellChangeTimes->{{3.547022048665861*^9, 3.54702206566894*^9}, {
   3.547022219499251*^9, 3.54702222715679*^9}, 3.547033933965227*^9, 
   3.5623179149139853`*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"\<\"INTRODUCTION\"\>", ",", "\<\"When\"\>", ",", "\<\"on\"\>", 
    ",", "\<\"board\"\>", ",", "\<\"H\"\>", ",", "\<\"M\"\>", 
    ",", "\<\"S\"\>", ",", "\<\"Beagle\"\>", ",", "\<\"as\"\>", ",", 
    RowBox[{"\[LeftSkeleton]", "1696", "\[RightSkeleton]"}], 
    ",", "\<\"the\"\>", ",", "\<\"main\"\>", ",", "\<\"but\"\>", 
    ",", "\<\"not\"\>", ",", "\<\"exclusive\"\>", ",", "\<\"means\"\>", 
    ",", "\<\"of\"\>", ",", "\<\"modification\"\>", ",", "\<\"CHAPTER\"\>"}], 
   "}"}],
  Short[#, 4]& ]], "Output",
 CellChangeTimes->{{3.562317908374763*^9, 3.5623179158390417`*^9}, 
   3.562318661324486*^9}]
}, Open  ]],

Cell[TextData[{
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " has a number of commands for selecting elements from lists. The ",
 StyleBox["Take",
  FontWeight->"Bold"],
 " command allows us to extract a given number of items from the beginning of \
a list."
}], "Text",
 CellChangeTimes->{{3.5623179705654716`*^9, 3.562318018323454*^9}, {
  3.562318073635407*^9, 3.562318100089039*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Take", "[", 
  RowBox[{"introList", ",", "40"}], "]"}]], "Input",
 CellChangeTimes->{{3.513509064468219*^9, 3.513509075690248*^9}, {
  3.513509118212433*^9, 3.513509119263319*^9}, {3.547022439204197*^9, 
  3.547022479088327*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"INTRODUCTION\"\>", ",", "\<\"When\"\>", ",", "\<\"on\"\>", 
   ",", "\<\"board\"\>", ",", "\<\"H\"\>", ",", "\<\"M\"\>", ",", "\<\"S\"\>",
    ",", "\<\"Beagle\"\>", ",", "\<\"as\"\>", ",", "\<\"naturalist\"\>", 
   ",", "\<\"I\"\>", ",", "\<\"was\"\>", ",", "\<\"much\"\>", 
   ",", "\<\"struck\"\>", ",", "\<\"with\"\>", ",", "\<\"certain\"\>", 
   ",", "\<\"facts\"\>", ",", "\<\"in\"\>", ",", "\<\"the\"\>", 
   ",", "\<\"distribution\"\>", ",", "\<\"of\"\>", ",", "\<\"the\"\>", 
   ",", "\<\"inhabitants\"\>", ",", "\<\"of\"\>", ",", "\<\"South\"\>", 
   ",", "\<\"America\"\>", ",", "\<\"and\"\>", ",", "\<\"in\"\>", 
   ",", "\<\"the\"\>", ",", "\<\"geological\"\>", ",", "\<\"relations\"\>", 
   ",", "\<\"of\"\>", ",", "\<\"the\"\>", ",", "\<\"present\"\>", 
   ",", "\<\"to\"\>", ",", "\<\"the\"\>", ",", "\<\"past\"\>", 
   ",", "\<\"inhabitants\"\>", ",", "\<\"of\"\>", ",", "\<\"that\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.562318037573434*^9, 3.562318661358734*^9}]
}, Open  ]],

Cell[TextData[{
 "The ",
 StyleBox["First",
  FontWeight->"Bold"],
 " command returns the first item in a list, and the ",
 StyleBox["Rest",
  FontWeight->"Bold"],
 " command returns everything but the first element. The ",
 StyleBox["Last",
  FontWeight->"Bold"],
 " command returns the last item."
}], "Text",
 CellChangeTimes->{{3.562318103100919*^9, 3.56231815717583*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"First", "[", "introList", "]"}]], "Input",
 CellChangeTimes->{{3.513509081403446*^9, 3.513509085434189*^9}, {
  3.547022490910411*^9, 3.547022491363364*^9}}],

Cell[BoxData["\<\"INTRODUCTION\"\>"], "Output",
 CellChangeTimes->{3.562318051158514*^9, 3.562318661391572*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Short", "[", 
  RowBox[{"Rest", "[", "introList", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.513509089220837*^9, 3.51350909387435*^9}, {
  3.547022496790865*^9, 3.5470225267779427`*^9}, {3.547022967097556*^9, 
  3.547022979718812*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"\<\"When\"\>", ",", "\<\"on\"\>", ",", 
    RowBox[{"\[LeftSkeleton]", "1709", "\[RightSkeleton]"}], 
    ",", "\<\"modification\"\>", ",", "\<\"CHAPTER\"\>"}], "}"}],
  Short]], "Output",
 CellChangeTimes->{3.562318063577589*^9, 3.562318661424624*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Last", "[", "introList", "]"}]], "Input",
 CellChangeTimes->{{3.5470225361376257`*^9, 3.547022539570929*^9}}],

Cell[BoxData["\<\"CHAPTER\"\>"], "Output",
 CellChangeTimes->{3.5623181673230143`*^9, 3.562318661457645*^9}]
}, Open  ]],

Cell[TextData[{
 "We can also use an ",
 StyleBox["index ",
  FontSlant->"Italic"],
 "to pull out list elements."
}], "Text",
 CellChangeTimes->{{3.5623183031147127`*^9, 3.5623183061435347`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"introList", "\[LeftDoubleBracket]", "8", 
  "\[RightDoubleBracket]"}]], "Input",
 CellChangeTimes->{{3.513510431063981*^9, 3.513510438636302*^9}, {
  3.547022554783963*^9, 3.5470225552187843`*^9}, {3.5623183263684597`*^9, 
  3.56231832684877*^9}}],

Cell[BoxData["\<\"Beagle\"\>"], "Output",
 CellChangeTimes->{{3.562318315744556*^9, 3.562318327295183*^9}, 
   3.562318661556168*^9}]
}, Open  ]],

Cell[TextData[{
 "We can test whether or not a given item is a member of a list with the ",
 StyleBox["MemberQ",
  FontWeight->"Bold"],
 " command."
}], "Text",
 CellChangeTimes->{{3.5623181725210037`*^9, 3.562318211497408*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MemberQ", "[", 
  RowBox[{"introList", ",", "\"\<naturalist\>\""}], "]"}]], "Input",
 CellChangeTimes->{{3.513532572094133*^9, 3.513532586760565*^9}, {
  3.54702256314856*^9, 3.5470225636080236`*^9}, {3.5470225977055063`*^9, 
  3.547022598702157*^9}}],

Cell[BoxData["True"], "Output",
 CellChangeTimes->{3.562318237050396*^9, 3.562318661492714*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MemberQ", "[", 
  RowBox[{"introList", ",", "\"\<naturist\>\""}], "]"}]], "Input",
 CellChangeTimes->{{3.513532610212311*^9, 3.5135326186851273`*^9}, {
  3.547022603736636*^9, 3.547022608281859*^9}}],

Cell[BoxData["False"], "Output",
 CellChangeTimes->{3.562318245200338*^9, 3.56231866152454*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
The Map command lets us process each element in our list\
\>", "Subsection",
 CellChangeTimes->{{3.562318342118967*^9, 3.562318352454557*^9}}],

Cell[TextData[{
 "If we want to apply some kind of function to every element in a list, the \
most natural way to accomplish this in ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " is with the ",
 StyleBox["Map",
  FontWeight->"Bold"],
 " command. Here we show three examples using the first 40 words of the \
Introduction. Note that ",
 StyleBox["Map",
  FontWeight->"Bold"],
 " returns a new list rather than altering the original one."
}], "Text",
 CellChangeTimes->{{3.562318404803013*^9, 3.562318494686194*^9}, {
  3.562319165292338*^9, 3.56231919412246*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Map", "[", 
  RowBox[{"ToUpperCase", ",", 
   RowBox[{"Take", "[", 
    RowBox[{"introList", ",", "40"}], "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.513509185691944*^9, 3.513509197798243*^9}, {
  3.5470239320715923`*^9, 3.547023949915019*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"INTRODUCTION\"\>", ",", "\<\"WHEN\"\>", ",", "\<\"ON\"\>", 
   ",", "\<\"BOARD\"\>", ",", "\<\"H\"\>", ",", "\<\"M\"\>", ",", "\<\"S\"\>",
    ",", "\<\"BEAGLE\"\>", ",", "\<\"AS\"\>", ",", "\<\"NATURALIST\"\>", 
   ",", "\<\"I\"\>", ",", "\<\"WAS\"\>", ",", "\<\"MUCH\"\>", 
   ",", "\<\"STRUCK\"\>", ",", "\<\"WITH\"\>", ",", "\<\"CERTAIN\"\>", 
   ",", "\<\"FACTS\"\>", ",", "\<\"IN\"\>", ",", "\<\"THE\"\>", 
   ",", "\<\"DISTRIBUTION\"\>", ",", "\<\"OF\"\>", ",", "\<\"THE\"\>", 
   ",", "\<\"INHABITANTS\"\>", ",", "\<\"OF\"\>", ",", "\<\"SOUTH\"\>", 
   ",", "\<\"AMERICA\"\>", ",", "\<\"AND\"\>", ",", "\<\"IN\"\>", 
   ",", "\<\"THE\"\>", ",", "\<\"GEOLOGICAL\"\>", ",", "\<\"RELATIONS\"\>", 
   ",", "\<\"OF\"\>", ",", "\<\"THE\"\>", ",", "\<\"PRESENT\"\>", 
   ",", "\<\"TO\"\>", ",", "\<\"THE\"\>", ",", "\<\"PAST\"\>", 
   ",", "\<\"INHABITANTS\"\>", ",", "\<\"OF\"\>", ",", "\<\"THAT\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.5623191405567293`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Map", "[", 
  RowBox[{"ToLowerCase", ",", 
   RowBox[{"Take", "[", 
    RowBox[{"introList", ",", "40"}], "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.513509185691944*^9, 3.513509197798243*^9}, {
   3.513509235288643*^9, 3.513509236489555*^9}, 3.547023953315316*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"introduction\"\>", ",", "\<\"when\"\>", ",", "\<\"on\"\>", 
   ",", "\<\"board\"\>", ",", "\<\"h\"\>", ",", "\<\"m\"\>", ",", "\<\"s\"\>",
    ",", "\<\"beagle\"\>", ",", "\<\"as\"\>", ",", "\<\"naturalist\"\>", 
   ",", "\<\"i\"\>", ",", "\<\"was\"\>", ",", "\<\"much\"\>", 
   ",", "\<\"struck\"\>", ",", "\<\"with\"\>", ",", "\<\"certain\"\>", 
   ",", "\<\"facts\"\>", ",", "\<\"in\"\>", ",", "\<\"the\"\>", 
   ",", "\<\"distribution\"\>", ",", "\<\"of\"\>", ",", "\<\"the\"\>", 
   ",", "\<\"inhabitants\"\>", ",", "\<\"of\"\>", ",", "\<\"south\"\>", 
   ",", "\<\"america\"\>", ",", "\<\"and\"\>", ",", "\<\"in\"\>", 
   ",", "\<\"the\"\>", ",", "\<\"geological\"\>", ",", "\<\"relations\"\>", 
   ",", "\<\"of\"\>", ",", "\<\"the\"\>", ",", "\<\"present\"\>", 
   ",", "\<\"to\"\>", ",", "\<\"the\"\>", ",", "\<\"past\"\>", 
   ",", "\<\"inhabitants\"\>", ",", "\<\"of\"\>", ",", "\<\"that\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.562319150838316*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Map", "[", 
  RowBox[{"StringLength", ",", 
   RowBox[{"Take", "[", 
    RowBox[{"introList", ",", "40"}], "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5135095985148573`*^9, 3.513509607824321*^9}, 
   3.5470239562436457`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "12", ",", "4", ",", "2", ",", "5", ",", "1", ",", "1", ",", "1", ",", "6", 
   ",", "2", ",", "10", ",", "1", ",", "3", ",", "4", ",", "6", ",", "4", ",",
    "7", ",", "5", ",", "2", ",", "3", ",", "12", ",", "2", ",", "3", ",", 
   "11", ",", "2", ",", "5", ",", "7", ",", "3", ",", "2", ",", "3", ",", 
   "10", ",", "9", ",", "2", ",", "3", ",", "7", ",", "2", ",", "3", ",", "4",
    ",", "11", ",", "2", ",", "4"}], "}"}]], "Output",
 CellChangeTimes->{3.5623191624591703`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Computing word frequencies", "Subsection",
 CellChangeTimes->{{3.562319208211643*^9, 3.5623192124010487`*^9}}],

Cell[TextData[{
 "In order to compute word frequencies, we first convert all words to \
lowercase, the sort them and count how often each appears using the ",
 StyleBox["Tally ",
  FontWeight->"Bold"],
 "command. This gives us a list of lists, where each of the smaller lists \
contains a single word and its frequency. "
}], "Text",
 CellChangeTimes->{{3.5623192452666683`*^9, 3.562319389960231*^9}, 
   3.5623194731518393`*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"lowerIntroList", "=", 
   RowBox[{"Map", "[", 
    RowBox[{"ToLowerCase", ",", "introList"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sortedIntroList", "=", 
   RowBox[{"Sort", "[", "lowerIntroList", "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"wordFreq", "=", 
   RowBox[{"Tally", "[", "sortedIntroList", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Short", "[", "wordFreq", "]"}]}], "Input",
 CellChangeTimes->{{3.5135100758019943`*^9, 3.5135101114136667`*^9}, {
   3.547024091976222*^9, 3.5470240977101707`*^9}, {3.562319414795299*^9, 
   3.562319462046362*^9}, 3.562319493269878*^9}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\<\"1837\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"1844\"\>", ",", "2"}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "624", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"years\"\>", ",", "3"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"yet\"\>", ",", "2"}], "}"}]}], "}"}],
  Short]], "Output",
 CellChangeTimes->{3.562319496540655*^9}]
}, Open  ]],

Cell[TextData[{
 "Finally we can sort our tally list by the frequency of each item. This is \
traditionally done in descending order. In ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " we can change the sort order by passing the ",
 StyleBox["Sort",
  FontWeight->"Bold"],
 " command an anonymous function. (It isn\[CloseCurlyQuote]t crucial for this \
example to understand exactly how this works, but it is explained in the next \
section if you are curious. If not, just skip ahead.)"
}], "Text",
 CellChangeTimes->{{3.562319475573374*^9, 3.5623195220915823`*^9}, {
  3.562319618730534*^9, 3.5623196967556953`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"sortedFrequencyList", "=", 
   RowBox[{"Sort", "[", 
    RowBox[{"wordFreq", ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
       ">", 
       RowBox[{"#2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
       "&"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"sortedFrequencyList", ",", "8"}], "]"}]}], "Input",
 CellChangeTimes->{{3.51351174816334*^9, 3.5135117710310163`*^9}, 
   3.547033994291498*^9, {3.562319538940189*^9, 3.562319547109508*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\<\"the\"\>", ",", "100"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"of\"\>", ",", "91"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"to\"\>", ",", "54"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"and\"\>", ",", "52"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"i\"\>", ",", "44"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"in\"\>", ",", "37"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"that\"\>", ",", "27"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"a\"\>", ",", "24"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"this\"\>", ",", "20"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"it\"\>", ",", "20"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"be\"\>", ",", "20"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"which\"\>", ",", "18"}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "605", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"admiration\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"admirably\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"adduced\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"adapted\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"acquire\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"acknowledging\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"acknowledged\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"accuracy\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"account\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"absolutely\"\>", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"1837\"\>", ",", "1"}], "}"}]}], "}"}],
  Short[#, 8]& ]], "Output",
 CellChangeTimes->{{3.562319534074436*^9, 3.56231954829252*^9}}]
}, Open  ]],

Cell["\<\
Here are the twenty most frequent words:\
\>", "Text",
 CellChangeTimes->{{3.562324096917938*^9, 3.562324106244768*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Take", "[", 
  RowBox[{"sortedFrequencyList", ",", "20"}], "]"}]], "Input",
 CellChangeTimes->{{3.5135118639232492`*^9, 3.513511878034113*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\<\"the\"\>", ",", "100"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"of\"\>", ",", "91"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"to\"\>", ",", "54"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"and\"\>", ",", "52"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"i\"\>", ",", "44"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"in\"\>", ",", "37"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"that\"\>", ",", "27"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"a\"\>", ",", "24"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"this\"\>", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"it\"\>", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"be\"\>", ",", "20"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"which\"\>", ",", "18"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"have\"\>", ",", "18"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"species\"\>", ",", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"on\"\>", ",", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"is\"\>", ",", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"as\"\>", ",", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"my\"\>", ",", "13"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"been\"\>", ",", "13"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"for\"\>", ",", "11"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.5623241103469276`*^9}]
}, Open  ]],

Cell[TextData[{
 "The ",
 StyleBox["Cases",
  FontWeight->"Bold"],
 " statement pulls every item from a list that matches a pattern.  Here we \
are looking to see how often the word \[OpenCurlyDoubleQuote]modification\
\[CloseCurlyDoubleQuote] appears."
}], "Text",
 CellChangeTimes->{{3.562324123165251*^9, 3.56232412615028*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Cases", "[", 
  RowBox[{"wordFreq", ",", 
   RowBox[{"{", 
    RowBox[{"\"\<modification\>\"", ",", "_"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.513511326034938*^9, 3.513511345819559*^9}, 
   3.513511410229457*^9, {3.547024576379676*^9, 3.547024577734756*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"\<\"modification\"\>", ",", "4"}], "}"}], "}"}]], "Output",
 CellChangeTimes->{3.562324134832981*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Aside: Anonymous Functions", "Subsection",
 CellChangeTimes->{{3.562319706955283*^9, 3.56231971589673*^9}}],

Cell[TextData[{
 "Most programming languages let you define new functions, and ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " is no exception. You can use these new functions with built-in commands \
like ",
 StyleBox["Map",
  FontWeight->"Bold"],
 "."
}], "Text",
 CellChangeTimes->{{3.5623197718416767`*^9, 3.562319821544907*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"plus2", "[", "x_", "]"}], ":=", "\[IndentingNewLine]", 
  RowBox[{"Return", "[", 
   RowBox[{"x", "+", "2"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.513501293231903*^9, 3.5135013115776653`*^9}, 
   3.513511042853307*^9, {3.562319830467196*^9, 3.5623198333294573`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Map", "[", 
  RowBox[{"plus2", ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.513501316317018*^9, 3.513501326328458*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", "4", ",", "5"}], "}"}]], "Output",
 CellChangeTimes->{3.562319841212895*^9}]
}, Open  ]],

Cell[TextData[{
 "Being able to define functions allows you to \[LineSeparator]\t",
 StyleBox["hide details",
  FontSlant->"Italic"],
 ": as long as you can use a function like ",
 StyleBox["plus2",
  FontWeight->"Bold"],
 " you may not care how it works\n\t",
 StyleBox["reuse and share code",
  FontSlant->"Italic"],
 ": so you don\[CloseCurlyQuote]t have to keep reinventing the wheel."
}], "Text",
 CellChangeTimes->{{3.562319865835971*^9, 3.562319888789777*^9}}],

Cell[TextData[{
 "In ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 ", you can also create ",
 StyleBox["anonymous",
  FontSlant->"Italic"],
 " functions. One way of writing an anonymous function in ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " is to use a ",
 StyleBox["Slot",
  FontWeight->"Bold"],
 " in place of a variable."
}], "Text",
 CellChangeTimes->{{3.5623199161242*^9, 3.562319919861532*^9}}],

Cell["# + 2 &", "Text",
 CellChangeTimes->{3.5623199325938053`*^9}],

Cell["\<\
So we don\[CloseCurlyQuote]t have to define our function in advance, we can \
just write it where we need it.\
\>", "Text",
 CellChangeTimes->{{3.5623199427263813`*^9, 3.5623199452594347`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Map", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"#", "+", "2"}], "&"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.51350155378265*^9, 3.513501563382359*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", "4", ",", "5"}], "}"}]], "Output",
 CellChangeTimes->{3.562319956896357*^9}]
}, Open  ]],

Cell["\<\
We can apply an anonymous function to an argument like this:\
\>", "Text",
 CellChangeTimes->{{3.562320000969887*^9, 3.562320003772716*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    RowBox[{"#", "+", "2"}], "&"}], ")"}], "[", "40", "]"}]], "Input",
 CellChangeTimes->{{3.513501657581882*^9, 3.513501687602624*^9}}],

Cell[BoxData["42"], "Output",
 CellChangeTimes->{3.562320016370151*^9}]
}, Open  ]],

Cell[TextData[{
 "A named function like ",
 StyleBox["plus2",
  FontWeight->"Bold"],
 " is still sitting there when we\[CloseCurlyQuote]re done with it.  An \
anonymous function disappears immediately after use."
}], "Text",
 CellChangeTimes->{{3.5623200303562593`*^9, 3.562320038914756*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["N-grams", "Subsection",
 CellChangeTimes->{{3.562324151076453*^9, 3.562324152084149*^9}, {
  3.5623243359816313`*^9, 3.562324337492695*^9}}],

Cell[TextData[{
 "The ",
 StyleBox["Partition",
  FontWeight->"Bold"],
 " command can be used to create n-grams.  This tells ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " to give us all of the partitions of a list that are two elements long and \
that are offset by one."
}], "Text",
 CellChangeTimes->{{3.5623241705874157`*^9, 3.5623241812758408`*^9}, {
  3.562324339772488*^9, 3.562324340299816*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"bigrams", "=", 
   RowBox[{"Partition", "[", 
    RowBox[{"lowerIntroList", ",", "2", ",", "1"}], "]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"bigrams", ",", "8"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513510236912479*^9, 3.513510267416089*^9}, 
   3.513510309386425*^9, {3.5135105226742773`*^9, 3.513510526055801*^9}, {
   3.547024603386063*^9, 3.547024604867043*^9}, 3.547034020875515*^9, {
   3.562324194997053*^9, 3.562324215246892*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\<\"introduction\"\>", ",", "\<\"when\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"when\"\>", ",", "\<\"on\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"on\"\>", ",", "\<\"board\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"board\"\>", ",", "\<\"h\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"h\"\>", ",", "\<\"m\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"m\"\>", ",", "\<\"s\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"s\"\>", ",", "\<\"beagle\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"beagle\"\>", ",", "\<\"as\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"as\"\>", ",", "\<\"naturalist\"\>"}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "1695", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"been\"\>", ",", "\<\"the\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"the\"\>", ",", "\<\"main\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"main\"\>", ",", "\<\"but\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"but\"\>", ",", "\<\"not\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"not\"\>", ",", "\<\"exclusive\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"exclusive\"\>", ",", "\<\"means\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"means\"\>", ",", "\<\"of\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"of\"\>", ",", "\<\"modification\"\>"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"modification\"\>", ",", "\<\"chapter\"\>"}], "}"}]}], "}"}],
  
  Short[#, 8]& ]], "Output",
 CellChangeTimes->{{3.562324191457252*^9, 3.562324215811686*^9}}]
}, Open  ]],

Cell["\<\
We can tally and sort bigrams, too.\
\>", "Text",
 CellChangeTimes->{3.562324227500272*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"sortedBigrams", "=", 
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"Tally", "[", "bigrams", "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
       ">", 
       RowBox[{"#2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
       "&"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"sortedBigrams", ",", "8"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513510290365209*^9, 3.5135103324186897`*^9}, {
   3.5135103893801107`*^9, 3.513510399579616*^9}, {3.5135104731676073`*^9, 
   3.513510496853149*^9}, {3.5135105329127913`*^9, 3.5135105359846373`*^9}, 
   3.547034029436455*^9, {3.5623242414631033`*^9, 3.5623242416709146`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"of\"\>", ",", "\<\"the\"\>"}], "}"}], ",", "21"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"in\"\>", ",", "\<\"the\"\>"}], "}"}], ",", "13"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"i\"\>", ",", "\<\"have\"\>"}], "}"}], ",", "11"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"to\"\>", ",", "\<\"the\"\>"}], "}"}], ",", "11"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"which\"\>", ",", "\<\"i\"\>"}], "}"}], ",", "7"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"to\"\>", ",", "\<\"me\"\>"}], "}"}], ",", "7"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"of\"\>", ",", "\<\"species\"\>"}], "}"}], ",", "6"}], 
     "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"i\"\>", ",", "\<\"shall\"\>"}], "}"}], ",", "5"}], "}"}], 
    ",", 
    RowBox[{"\[LeftSkeleton]", "1420", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"beagle\"\>", ",", "\<\"as\"\>"}], "}"}], ",", "1"}], 
     "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"s\"\>", ",", "\<\"beagle\"\>"}], "}"}], ",", "1"}], "}"}],
     ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"m\"\>", ",", "\<\"s\"\>"}], "}"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"h\"\>", ",", "\<\"m\"\>"}], "}"}], ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"board\"\>", ",", "\<\"h\"\>"}], "}"}], ",", "1"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"on\"\>", ",", "\<\"board\"\>"}], "}"}], ",", "1"}], "}"}],
     ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"when\"\>", ",", "\<\"on\"\>"}], "}"}], ",", "1"}], "}"}], 
    ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\<\"introduction\"\>", ",", "\<\"when\"\>"}], "}"}], ",", 
      "1"}], "}"}]}], "}"}],
  Short[#, 8]& ]], "Output",
 CellChangeTimes->{{3.5623242378483143`*^9, 3.5623242422323437`*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Concordance (Keyword in Context)\
\>", "Subsection",
 CellChangeTimes->{{3.5623242592493896`*^9, 3.562324280830934*^9}}],

Cell[TextData[{
 "A concordance shows keywords in the context of surrounding words.  We can \
make one of these quite easily if we starting by generating n-grams. Then we \
use ",
 StyleBox["Cases",
  FontWeight->"Bold"],
 " to pull out all of the 5-grams in the Introduction that have \
\[OpenCurlyDoubleQuote]organic\[CloseCurlyDoubleQuote] as the middle word \
(for example), and format the output with the ",
 StyleBox["TableForm",
  FontWeight->"Bold"],
 " command."
}], "Text",
 CellChangeTimes->{{3.562324326798587*^9, 3.562324385171234*^9}, {
  3.56232446163906*^9, 3.562324461677747*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"fivegrams", "=", 
   RowBox[{"Partition", "[", 
    RowBox[{"lowerIntroList", ",", "5", ",", "1"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"TableForm", "[", 
  RowBox[{"Cases", "[", 
   RowBox[{"fivegrams", ",", 
    RowBox[{"{", 
     RowBox[{"_", ",", "_", ",", "\"\<organic\>\"", ",", "_", ",", "_"}], 
     "}"}]}], "]"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513511248311277*^9, 3.513511261603615*^9}, {
  3.513532398286975*^9, 3.513532403940528*^9}, {3.5470253189831877`*^9, 
  3.547025321636856*^9}, {3.5623243963340387`*^9, 3.562324454392639*^9}}],

Cell[BoxData[
 TagBox[GridBox[{
    {"\<\"affinities\"\>", "\<\"of\"\>", "\<\"organic\"\>", "\<\"beings\"\>", \
"\<\"on\"\>"},
    {"\<\"several\"\>", "\<\"distinct\"\>", "\<\"organic\"\>", \
"\<\"beings\"\>", "\<\"by\"\>"},
    {"\<\"coadaptations\"\>", "\<\"of\"\>", "\<\"organic\"\>", \
"\<\"beings\"\>", "\<\"to\"\>"},
    {"\<\"amongst\"\>", "\<\"all\"\>", "\<\"organic\"\>", "\<\"beings\"\>", "\
\<\"throughout\"\>"},
    {"\<\"succession\"\>", "\<\"of\"\>", "\<\"organic\"\>", "\<\"beings\"\>", \
"\<\"throughout\"\>"}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[2.0999999999999996`]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  Function[BoxForm`e$, 
   TableForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.562324406004394*^9, 3.562324456843721*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Removing stop words", "Subsection",
 CellChangeTimes->{{3.562324522909973*^9, 3.562324525212741*^9}}],

Cell[TextData[{
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " has access to a lot of built-in, curated data.  Here we grab a list of \
English stopwords."
}], "Text",
 CellChangeTimes->{3.562324539869426*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"stopWords", "=", 
   RowBox[{"WordData", "[", 
    RowBox[{"All", ",", "\"\<Stopwords\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"stopWords", ",", "4"}], "]"}]}], "Input",
 CellChangeTimes->{{3.499275571943419*^9, 3.499275583703279*^9}, 
   3.499496072207768*^9, 3.5135124310886517`*^9, 3.5470340537170887`*^9, {
   3.5623245520613337`*^9, 3.562324552269104*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"\<\"0\"\>", ",", "\<\"1\"\>", ",", "\<\"2\"\>", ",", "\<\"3\"\>", 
    ",", "\<\"4\"\>", ",", "\<\"5\"\>", ",", "\<\"6\"\>", ",", "\<\"7\"\>", 
    ",", "\<\"8\"\>", ",", "\<\"9\"\>", ",", "\<\"a\"\>", ",", "\<\"A\"\>", 
    ",", "\<\"about\"\>", ",", "\<\"above\"\>", ",", 
    RowBox[{"\[LeftSkeleton]", "234", "\[RightSkeleton]"}], 
    ",", "\<\"with\"\>", ",", "\<\"within\"\>", ",", "\<\"without\"\>", 
    ",", "\<\"would\"\>", ",", "\<\"x\"\>", ",", "\<\"X\"\>", 
    ",", "\<\"y\"\>", ",", "\<\"Y\"\>", ",", "\<\"yet\"\>", 
    ",", "\<\"you\"\>", ",", "\<\"your\"\>", ",", "\<\"yours\"\>", 
    ",", "\<\"z\"\>", ",", "\<\"Z\"\>"}], "}"}],
  Short[#, 4]& ]], "Output",
 CellChangeTimes->{3.562324552772784*^9}]
}, Open  ]],

Cell[TextData[{
 "The ",
 StyleBox["Select",
  FontWeight->"Bold"],
 " command allows us to use a function to pull items from a list.  We want \
everything that is not a member of the list of stop words."
}], "Text",
 CellChangeTimes->{{3.513512623332355*^9, 3.5135127088852262`*^9}, {
   3.5135127707119637`*^9, 3.513512771553851*^9}, 3.51351283002063*^9, {
   3.513513043781899*^9, 3.513513107505973*^9}, {3.513532653035204*^9, 
   3.513532699274063*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Short", "[", 
  RowBox[{"lowerIntroList", ",", "8"}], "]"}]], "Input",
 CellChangeTimes->{{3.513513147106862*^9, 3.513513160617852*^9}, {
  3.547025477804221*^9, 3.5470254801483927`*^9}, {3.562324595666078*^9, 
  3.562324600706121*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"\<\"introduction\"\>", ",", "\<\"when\"\>", ",", "\<\"on\"\>", 
    ",", "\<\"board\"\>", ",", "\<\"h\"\>", ",", "\<\"m\"\>", 
    ",", "\<\"s\"\>", ",", "\<\"beagle\"\>", ",", "\<\"as\"\>", 
    ",", "\<\"naturalist\"\>", ",", "\<\"i\"\>", ",", "\<\"was\"\>", 
    ",", "\<\"much\"\>", ",", "\<\"struck\"\>", ",", "\<\"with\"\>", 
    ",", "\<\"certain\"\>", ",", "\<\"facts\"\>", ",", "\<\"in\"\>", 
    ",", "\<\"the\"\>", ",", 
    RowBox[{"\[LeftSkeleton]", "1676", "\[RightSkeleton]"}], 
    ",", "\<\"species\"\>", ",", "\<\"furthermore\"\>", ",", "\<\"i\"\>", 
    ",", "\<\"am\"\>", ",", "\<\"convinced\"\>", ",", "\<\"that\"\>", 
    ",", "\<\"natural\"\>", ",", "\<\"selection\"\>", ",", "\<\"has\"\>", 
    ",", "\<\"been\"\>", ",", "\<\"the\"\>", ",", "\<\"main\"\>", 
    ",", "\<\"but\"\>", ",", "\<\"not\"\>", ",", "\<\"exclusive\"\>", 
    ",", "\<\"means\"\>", ",", "\<\"of\"\>", ",", "\<\"modification\"\>", 
    ",", "\<\"chapter\"\>"}], "}"}],
  Short[#, 8]& ]], "Output",
 CellChangeTimes->{{3.562324596762402*^9, 3.562324602145632*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"lowerIntroNoStopwords", "=", 
   RowBox[{"Select", "[", 
    RowBox[{"lowerIntroList", ",", 
     RowBox[{
      RowBox[{"Not", "[", 
       RowBox[{"MemberQ", "[", 
        RowBox[{"stopWords", ",", "#"}], "]"}], "]"}], "&"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"lowerIntroNoStopwords", ",", "8"}], "]"}]}], "Input",
 CellChangeTimes->{{3.5135129300288277`*^9, 3.513513010646536*^9}, {
   3.547025491678665*^9, 3.5470254984043627`*^9}, 3.547034064615868*^9, {
   3.562324615740595*^9, 3.5623246162252617`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{"\<\"introduction\"\>", ",", "\<\"board\"\>", 
    ",", "\<\"beagle\"\>", ",", "\<\"naturalist\"\>", ",", "\<\"struck\"\>", 
    ",", "\<\"certain\"\>", ",", "\<\"facts\"\>", ",", "\<\"distribution\"\>",
     ",", "\<\"inhabitants\"\>", ",", "\<\"south\"\>", ",", "\<\"america\"\>",
     ",", "\<\"geological\"\>", ",", "\<\"relations\"\>", 
    ",", "\<\"present\"\>", ",", 
    RowBox[{"\[LeftSkeleton]", "697", "\[RightSkeleton]"}], 
    ",", "\<\"species\"\>", ",", "\<\"descendants\"\>", 
    ",", "\<\"species\"\>", ",", "\<\"furthermore\"\>", ",", "\<\"am\"\>", 
    ",", "\<\"convinced\"\>", ",", "\<\"natural\"\>", 
    ",", "\<\"selection\"\>", ",", "\<\"main\"\>", ",", "\<\"exclusive\"\>", 
    ",", "\<\"means\"\>", ",", "\<\"modification\"\>", 
    ",", "\<\"chapter\"\>"}], "}"}],
  Short[#, 8]& ]], "Output",
 CellChangeTimes->{3.562324620666235*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Bigrams containing the most frequent words\
\>", "Subsection",
 CellChangeTimes->{{3.562324646137566*^9, 3.562324651472574*^9}}],

Cell["\<\
Here is a more complicated example built mostly from functions we've already \
seen. We start by finding the ten most frequently occuring words once we have \
gotten rid of stop words.\
\>", "Text",
 CellChangeTimes->{{3.513532746012711*^9, 3.513532772355875*^9}, {
  3.513532831983807*^9, 3.51353284073367*^9}, {3.5135330147323303`*^9, 
  3.51353303978685*^9}, {3.547025684554604*^9, 3.5470256861837*^9}, {
  3.5623246655860147`*^9, 3.5623247109837523`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"freqWordCounts", "=", 
  RowBox[{"Take", "[", 
   RowBox[{
    RowBox[{"Sort", "[", 
     RowBox[{
      RowBox[{"Tally", "[", 
       RowBox[{"Take", "[", 
        RowBox[{"lowerIntroNoStopwords", ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{"-", "120"}]}], "}"}]}], "]"}], "]"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"#1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
        ">", 
        RowBox[{
        "#2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
       "&"}]}], "]"}], ",", "10"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5135145532797327`*^9, 3.513514594887085*^9}, {
   3.513514672972118*^9, 3.5135147448911324`*^9}, {3.5135150926695423`*^9, 
   3.51351510454635*^9}, {3.513515135182817*^9, 3.513515151272627*^9}, {
   3.5135151814001083`*^9, 3.513515191505727*^9}, {3.54702569879628*^9, 
   3.5470257000921593`*^9}, {3.547026013587479*^9, 3.5470260138383827`*^9}, 
   3.5470261101556463`*^9, 3.547026183747919*^9, 3.5470269886790047`*^9, {
   3.54702708380752*^9, 3.547027096592635*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\<\"shall\"\>", ",", "9"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"species\"\>", ",", "9"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"facts\"\>", ",", "9"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"chapter\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"variation\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"conditions\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"beings\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"organic\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"conclusions\"\>", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"subject\"\>", ",", "5"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.562324686758062*^9}]
}, Open  ]],

Cell["\<\
We remove a few of the words we are not interested in.\
\>", "Text",
 CellChangeTimes->{{3.5623247241103897`*^9, 3.5623247322703*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"freqWords", "=", 
   RowBox[{"Complement", "[", 
    RowBox[{
     RowBox[{"Map", "[", 
      RowBox[{"First", ",", "freqWordCounts"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"\"\<shall\>\"", ",", "\"\<subject\>\""}], "}"}]}], "]"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.513514730041527*^9, 3.5135147557389517`*^9}, 
   3.513514834542293*^9, {3.547026086755148*^9, 3.5470261506004257`*^9}, {
   3.547026194468732*^9, 3.547026218639434*^9}, {3.5470262516109037`*^9, 
   3.547026252633079*^9}, 3.5470269632673264`*^9, {3.547027021401208*^9, 
   3.547027024152776*^9}, {3.547027077013763*^9, 3.547027080061672*^9}, {
   3.5470271199948263`*^9, 3.547027121001843*^9}}],

Cell["\<\
We rewrite the bigrams as a list of graph edges. This will be useful for \
visualizing the results as a network.\
\>", "Text",
 CellChangeTimes->{{3.5623247459347143`*^9, 3.562324786933663*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"edgeList", "=", 
   RowBox[{"Map", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
       "\[Rule]", 
       RowBox[{"#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
      "&"}], ",", 
     RowBox[{"Partition", "[", 
      RowBox[{"lowerIntroNoStopwords", ",", "2", ",", "1"}], "]"}]}], "]"}]}],
   ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"edgeList", ",", "4"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513513320050641*^9, 3.513513364871571*^9}, {
   3.513513445922579*^9, 3.5135134473689947`*^9}, {3.51351348391549*^9, 
   3.513513486475466*^9}, {3.5135138218684683`*^9, 3.5135138234836407`*^9}, {
   3.513513872189485*^9, 3.5135138747647057`*^9}, 3.513532794696472*^9, {
   3.5135329384986773`*^9, 3.5135329394772797`*^9}, {3.547025738865313*^9, 
   3.547025739360914*^9}, 3.547034082827572*^9, {3.56232476992789*^9, 
   3.5623247708726587`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"\<\"introduction\"\>", "\[Rule]", "\<\"board\"\>"}], ",", 
    RowBox[{"\<\"board\"\>", "\[Rule]", "\<\"beagle\"\>"}], ",", 
    RowBox[{"\<\"beagle\"\>", "\[Rule]", "\<\"naturalist\"\>"}], ",", 
    RowBox[{"\[LeftSkeleton]", "717", "\[RightSkeleton]"}], ",", 
    RowBox[{"\<\"exclusive\"\>", "\[Rule]", "\<\"means\"\>"}], ",", 
    RowBox[{"\<\"means\"\>", "\[Rule]", "\<\"modification\"\>"}], ",", 
    RowBox[{"\<\"modification\"\>", "\[Rule]", "\<\"chapter\"\>"}]}], "}"}],
  Short[#, 4]& ]], "Output",
 CellChangeTimes->{{3.562324765816613*^9, 3.562324771351297*^9}}]
}, Open  ]],

Cell["\<\
We grab the most frequent ones.\
\>", "Text",
 CellChangeTimes->{{3.562324796885623*^9, 3.562324805757053*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"freqBigrams", "=", 
   RowBox[{"Union", "[", 
    RowBox[{
     RowBox[{"Select", "[", 
      RowBox[{"edgeList", ",", 
       RowBox[{
        RowBox[{"MemberQ", "[", 
         RowBox[{"freqWords", ",", 
          RowBox[{
          "#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
         "]"}], "&"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Select", "[", 
      RowBox[{"edgeList", ",", 
       RowBox[{
        RowBox[{"MemberQ", "[", 
         RowBox[{"freqWords", ",", 
          RowBox[{
          "#", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], 
         "]"}], "&"}]}], "]"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{"Short", "[", 
  RowBox[{"freqBigrams", ",", " ", "4"}], "]"}]}], "Input",
 CellChangeTimes->{{3.513514764485812*^9, 3.513514992882855*^9}, {
   3.5135329761651907`*^9, 3.51353298061662*^9}, 3.547034090860498*^9, {
   3.56232482031118*^9, 3.562324826774181*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"\<\"abstract\"\>", "\[Rule]", "\<\"variation\"\>"}], ",", 
    RowBox[{"\<\"affinities\"\>", "\[Rule]", "\<\"organic\"\>"}], ",", 
    RowBox[{"\<\"allied\"\>", "\[Rule]", "\<\"species\"\>"}], ",", 
    RowBox[{"\[LeftSkeleton]", "87", "\[RightSkeleton]"}], ",", 
    RowBox[{"\<\"varieties\"\>", "\[Rule]", "\<\"species\"\>"}], ",", 
    RowBox[{"\<\"varying\"\>", "\[Rule]", "\<\"conditions\"\>"}], ",", 
    RowBox[{"\<\"volume\"\>", "\[Rule]", "\<\"facts\"\>"}]}], "}"}],
  Short[#, 4]& ]], "Output",
 CellChangeTimes->{{3.562324816540305*^9, 3.562324827490951*^9}}]
}, Open  ]],

Cell["\<\
Finally we can visualize the results as a network. When you are exploring a \
text this way, you often want to keep tweaking your parameters and see if \
anything interesting comes up.\
\>", "Text",
 CellChangeTimes->{{3.562324834709869*^9, 3.5623249033215113`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Framed", "[", 
  RowBox[{"Pane", "[", 
   RowBox[{
    RowBox[{"GraphPlot", "[", 
     RowBox[{"freqBigrams", ",", 
      RowBox[{"Method", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<SpringElectricalEmbedding\>\"", ",", 
         RowBox[{"\"\<InferentialDistance\>\"", "\[Rule]", ".1"}], ",", 
         RowBox[{"\"\<RepulsiveForcePower\>\"", "\[Rule]", 
          RowBox[{"-", "4"}]}]}], "}"}]}], ",", 
      RowBox[{"VertexLabeling", "\[Rule]", "True"}], ",", 
      RowBox[{"DirectedEdges", "\[Rule]", "True"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"1100", ",", "800"}], "}"}]}]}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"400", ",", "400"}], "}"}], ",", 
    RowBox[{"Scrollbars", "\[Rule]", "True"}], ",", " ", 
    RowBox[{"ScrollPosition", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"400", ",", "200"}], "}"}]}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQ/dKFpale95Wj9kH1FhD9Y8udmSD6jYvcXhC9pP/P
MRDdplRyDUTvPXaBuwFILwuapAiieU5HqILoJ5OXaoBo9o4OExAdu+WoNYi+
9O+BK4gul98TCqIPHJwXDaJXuEzIAdP/bphm5b5yPMNwyR5EJ+nY5oFokbLI
YhA97fajChAdwX2kEkSvc/5dD6Izi9J6QfTna84LQbQby40NIPrFQo5tIFqX
U2k7iN7y4vtuEH1qk+8BEG2xNPQOiPY64fEBRJs6LW2b0fXKUSXPoh1E37lV
NAdE2+wLWASiOXbsXAaiq6zXbQfRAF7PnCQ=
  "]],

Cell[BoxData[
 FrameBox[
  PaneBox[
   GraphicsBox[
    TagBox[GraphicsComplexBox[CompressedData["
1:eJw1lns41AkXx2fmNzeMy5BLblEpt0QJK3VOkRCtShm3TXIpt5Iol1KSskvk
UstKSGRlddmK0qIt4tUIbchLkYqR61BjjJnX+zzve57nPN//z+f5fr9H1+/I
7gAKiUTKW9z/ajF/Yev1SiUs4Bdy+t1n4HtvfOdPPSqoXqOmoNEwCnbvTEo2
J7Fx86SAqdwgh4bPc0mejgoo/iB+cRRYeL4lZVOksyzWXcifO2Q3DYOXdBr1
/ChYFIrW5xPFkPpD4s50fSXMDiHbx3FlcaV7QtdolRT2a+tdm2im4GRqrVHB
MhkMtDjNC2hkYO621ljyuBQmZiw5xRDLYMP6mpq/a+iYx51qci9k4s4wad34
QAJLAzp2hM3K4GDxPedMXRI+NNkn0y3PwuwlFxIXNkhjVdycukBVAr9oqo3e
0heClVsG9YGmGB6d8o///JqFZ1+0pWw0pmO9dkzVw0omDoyPxvnKMfC5vqt7
1Y8qaNX5U7D4QA+kRJoqWp5noX5c+pceVzbWZ1WYWZxRQPUw8ztdr4SgPaHT
f3i3Esr7rzgRJEdD6XWB1b9+Z6PGtssz5X00FFyir+kKl8NE74zOugMU/Pfv
Oi61TnJ4qKSeOx4njR2WW3eamM2DkeJ+XT/1KZirzbrLpc5AZLexH7mIjK25
Fxxf9/Pg2EddDlmFgldMvPpeMkiYsPC21cFdDA9zjDOt+RQ0argeej+OiQ7x
pbs8V/PAUOeQZEnpAjRz2KxrR4VwOSZeeWAXBe8kpMbmn+iHHwxlwz76TgLp
f9NYuc3+xbKPUJ073KyxmQfF2W1mY6Yj4At2cxKPe8BUSYhRkhqHYV5qpwaZ
D6x7k40Bht+A+iY+kUmTRahxPJB0QH6RD1WnS5HA52bY2GNNwxGfA6W9dCZG
FT1JK19HRslUa+w6GymMNn3ZqhYshYZ3i97VBSngurHB9iOxFHTz3phLpiki
75X3aJ8hgbZl5cdhSghZmb5e0QXfYZJvHlvFewfTfvOe+658BOeSP2sJJxIO
NrgYBenSsHs59UZYgQw6KClYP7OQRnrq5cfx2ixcFapCChiioOjxlbuCWXn8
kPVGy3KDFIpuioyohxVQbtOD/dfbZsF6f+6T51IK2FQYOhCwg47dSc5U2h5p
3JzQ9MTEgYbVlxU/cAylEf1DYlgLn6EpZuHouV/ZmMmb362sKY1ycY6q3rIq
aG1VRnq+ZhrEx4YcxOWy+IUZMiJjKgauiEhXuzoN74+VBPF6qcjT9UhV5aji
/zlk3+9YphPLg08vBZz6Z1T8R7Bz21/hFNQSrH2m1TYDaicFh3Pe09DOpSKS
UULBbJcIZTi+FLfOXxtS8hkGr3Yv2s9Kc2DakMsJYdNw39vzDNdXbEzanvO6
qFgM7RFrslNiqKglzT/FjBLBmo9Mq9BuNlaEeQ4o2c9BXe/taEYpHQcn3NYH
Dckgtak67zqNDxk3eyzLexdgyzbnjKFXUmhleu7kHVt5/Muq0U3GjMB7K8X0
IAEZ0zZ0ReZ/lcLTZ2N+3JImgOeE+hKSjDQ6sTLAXGoa3NX1jD8l8SFp7ojd
VT0mRocNv2lVp6Ky0O5WftYUBFZ0nKTdpmPq4LNf5B0FcNCjc+OuFjpyPJu5
eq+mYCVfOnCTmMA/3ndHuaoI4LCqdmh1LQnh6f78o5wpePzp7E1NAwUc6X7j
sZAsgeDYO7dUk0j4OeKR1kQ/GdNd0rSajGRxOOLOILdRALdlGgJ2pi5yjh9Z
rfdGDNszPMo5+TQ8rhdXNL7vM+j+vGw79zEJdat5nq0D38FQ/CCCYSqLibN5
zlxdFu5tLUv5souOULe0zdWDhju1mvpvr1XDD6ZN8Yk/8iDazO5FhcZSpEfI
uGuXTcPHgQsT22WX4qGiW741sr3gW2r7NZhcD+5kP/ra1FloX51Yv95NFtU0
tG6IXJjYZmS2QYdHQWYOk+6zXgIp4TN503KL+cdLXXb0gAQqh2py0swJrOUg
ZzhVAg8f7PL65ElgtYWTfPUDCZhVen0eO0ug/6hhTEevBFQZLGFeOYExb/+6
YSSRwJZ88qoP7QRm/Sy2+bc8CbusjVvuCAkMjq0++EibhD3171dk2dCxf3OG
T+UnEg6ciDo+GEBHXdtLV9X4JDT4dfbUjXQ6+sp2VslLSHhD38qgeTGvfQ6y
Pl+SIqP1xYtgP0THAbP6iUxFMvbxm8Nl5RkYWek2p6ZORp2SEhe2NQM1TPil
2jpk9Fn/eL9dAAN1E7YpF68kYwGHflDwjYJRq71FxlUi2NYb0VGtReB9Wk9n
qakIrsRqnbfZSuC7+/b2p6vmgeJ5iHnSn8DCDZ3tvUbz8Jugq9A3iUAn/cNP
hm8KQSUjyuVrEYFXkurIbVpC2COcbGE/JfCczlrXmqw5uKR78crLfwhsZu+e
6mDMgcbyDndbHRq+HXMVBu6Ygk5F0d1zFjQsER9p6X06Cat63hbaO9FQGPXM
oNtkEmoD3afPe9HwDF2qj71pAu61W2+2CaZh4p72Sgv1cShyrf7iH01DB/32
2ZjZr/B7CF9blEDDziR+nGXbKFwaXzMoTqahjcbes/8q44G43tVy4DQDbdO6
yja9I6Hd6bR2OU8GRvkpa5j/TUId5su3keYMDK54Ij5RSUJVS1O25mKPhdRa
rFDIJWE+rEpW+kJHFT/7cUryYk9+ijoWWEfHX0JFnH3HSZjqesZe9yodzV36
xuT9Sfjt7t5i13A6/uSzosl8LwlnjIodwo2p+Nrsat4pTQl8Pc4SaBNUdDL4
bVUZWQIlbqnjPj0EcrPZ36pHxGD43NHWqorAN8MFKY8X/ZTpP2f8ZPH+LTss
o+89E8Ok4NEC34PAW25yB0vvi+EPhz7tSRMC3fe0M34rE8PRmibWU4JA57vG
RtkFi/9DYyQrmUFDbpWt1vWFERiyZV578YGKu/mO4RVCHuSUePO21FKRuBqe
IhKNgv4LdhA9j4ons/Ye20Idg/RVxVytWCqu+MPg+mqFcVBKpy7P9KZi6my8
opfOBHSvTCkJ3ULFnn6uta36JOQvTHU/0Kdi1lhFrkHpJMgvlKlu7KdgMrsy
I8dPABzW6afCJgpWky7V60wKgGp/g2v5JwUPpmw8sDJhDsKrl58SFFNQMz4m
P1JeCCdcwGxrNgXz9yqbDxQKIYXbcGHpRQr+EKKcAevn4cz9ZNfE0xScsaG+
8m2ch3xT57SEExSsi9jTouIpgv8A8MA6ag==
      "], {
       {RGBColor[0.5, 0., 0.], Arrowheads[{{0.020584615674281364`, 0.7}}], 
        ArrowBox[{1, 2}], ArrowBox[{2, 20}], ArrowBox[{2, 86}], 
        ArrowBox[{2, 87}], ArrowBox[{2, 88}], ArrowBox[{3, 4}], 
        ArrowBox[{4, 11}], ArrowBox[{5, 6}], ArrowBox[{6, 69}], 
        ArrowBox[{6, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 
         104, 105, 106, 39}], ArrowBox[{6, 70}], ArrowBox[{6, 71}], 
        ArrowBox[{6, 72}], ArrowBox[{6, 73}], ArrowBox[{6, 74}], 
        ArrowBox[{6, 75}], ArrowBox[{6, 76}], ArrowBox[{6, 77}], 
        ArrowBox[{6, 78}], ArrowBox[{6, 79}], ArrowBox[{6, 80}], 
        ArrowBox[{6, 81}], 
        ArrowBox[{6, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 
         118, 119, 120, 121, 122, 82}], ArrowBox[{6, 83}], ArrowBox[{7, 4}], 
        ArrowBox[{8, 9}], ArrowBox[{9, 46}], ArrowBox[{9, 47}], 
        ArrowBox[{9, 48}], ArrowBox[{9, 49}], ArrowBox[{9, 50}], 
        ArrowBox[{9, 51}], ArrowBox[{9, 52}], ArrowBox[{9, 21}], 
        ArrowBox[{9, 53}], ArrowBox[{10, 9}], ArrowBox[{11, 12}], 
        ArrowBox[{11, 13}], ArrowBox[{11, 14}], ArrowBox[{11, 15}], 
        ArrowBox[{11, 16}], ArrowBox[{15, 32}], ArrowBox[{17, 9}], 
        ArrowBox[{18, 2}], ArrowBox[{19, 9}], ArrowBox[{20, 1}], 
        ArrowBox[{20, 21}], ArrowBox[{20, 22}], ArrowBox[{23, 20}], 
        ArrowBox[{24, 4}], ArrowBox[{25, 6}], ArrowBox[{26, 8}], 
        ArrowBox[{26, 27}], ArrowBox[{26, 28}], ArrowBox[{26, 29}], 
        ArrowBox[{26, 30}], ArrowBox[{29, 6}], ArrowBox[{31, 20}], 
        ArrowBox[{32, 33}], ArrowBox[{32, 34}], ArrowBox[{32, 35}], 
        ArrowBox[{32, 36}], ArrowBox[{37, 9}], ArrowBox[{38, 6}], 
        ArrowBox[{39, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 
         134, 135, 136, 137, 138, 6}], ArrowBox[{40, 9}], ArrowBox[{41, 20}], 
        ArrowBox[{42, 4}], ArrowBox[{43, 6}], ArrowBox[{44, 32}], 
        ArrowBox[{45, 6}], ArrowBox[{52, 26}], ArrowBox[{54, 2}], 
        ArrowBox[{55, 20}], ArrowBox[{56, 26}], ArrowBox[{57, 2}], 
        ArrowBox[{58, 6}], ArrowBox[{59, 6}], ArrowBox[{60, 6}], 
        ArrowBox[{61, 2}], ArrowBox[{62, 26}], ArrowBox[{63, 20}], 
        ArrowBox[{64, 6}], ArrowBox[{65, 20}], ArrowBox[{66, 11}], 
        ArrowBox[{67, 26}], ArrowBox[{68, 9}], 
        ArrowBox[{82, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 
         150, 151, 152, 153, 154, 6}], ArrowBox[{84, 9}], ArrowBox[{84, 4}], 
        ArrowBox[{85, 6}], ArrowBox[{89, 32}], ArrowBox[{90, 9}]}, {InsetBox[
         FrameBox["\<\"abstract\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 1], InsetBox[
         FrameBox["\<\"variation\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 2], InsetBox[
         FrameBox["\<\"affinities\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 3], InsetBox[
         FrameBox["\<\"organic\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 4], InsetBox[
         FrameBox["\<\"allied\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 5], InsetBox[
         FrameBox["\<\"species\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 6], InsetBox[
         FrameBox["\<\"amongst\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 7], InsetBox[
         FrameBox["\<\"arrived\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 8], InsetBox[
         FrameBox["\<\"facts\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 9], InsetBox[
         FrameBox["\<\"balancing\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 10], InsetBox[
         FrameBox["\<\"beings\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 11], InsetBox[
         FrameBox["\<\"effects\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 12], InsetBox[
         FrameBox["\<\"embryological\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 13], InsetBox[
         FrameBox["\<\"live\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 14], InsetBox[
         FrameBox["\<\"physical\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 15], InsetBox[
         FrameBox["\<\"throughout\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 16], InsetBox[
         FrameBox["\<\"catalogues\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 17], InsetBox[
         FrameBox["\<\"cause\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 18], InsetBox[
         FrameBox["\<\"certain\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 19], InsetBox[
         FrameBox["\<\"chapter\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 20], InsetBox[
         FrameBox["\<\"shall\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 21], InsetBox[
         FrameBox["\<\"struggle\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 22], InsetBox[
         FrameBox["\<\"character\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 23], InsetBox[
         FrameBox["\<\"coadaptations\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 24], InsetBox[
         FrameBox["\<\"conclusion\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 25], InsetBox[
         FrameBox["\<\"conclusions\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 26], InsetBox[
         FrameBox["\<\"directly\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 27], InsetBox[
         FrameBox["\<\"grounded\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 28], InsetBox[
         FrameBox["\<\"origin\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 29], InsetBox[
         FrameBox["\<\"probable\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 30], InsetBox[
         FrameBox["\<\"condition\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 31], InsetBox[
         FrameBox["\<\"conditions\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 32], InsetBox[
         FrameBox["\<\"climate\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 33], InsetBox[
         FrameBox["\<\"habit\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 34], InsetBox[
         FrameBox["\<\"life\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 35], InsetBox[
         FrameBox["\<\"structure\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 36], InsetBox[
         FrameBox["\<\"continent\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 37], InsetBox[
         FrameBox["\<\"convinced\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 38], InsetBox[
         FrameBox["\<\"descendants\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 39], InsetBox[
         FrameBox["\<\"detail\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 40], InsetBox[
         FrameBox["\<\"devote\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 41], InsetBox[
         FrameBox["\<\"distinct\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 42], InsetBox[
         FrameBox["\<\"explain\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 43], InsetBox[
         FrameBox["\<\"external\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 44], InsetBox[
         FrameBox["\<\"extinct\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 45], InsetBox[
         FrameBox["\<\"adduced\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 46], InsetBox[
         FrameBox["\<\"arguments\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 47], InsetBox[
         FrameBox["\<\"come\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 48], InsetBox[
         FrameBox["\<\"distribution\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 49], InsetBox[
         FrameBox["\<\"illustration\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 50], InsetBox[
         FrameBox["\<\"possibly\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 51], InsetBox[
         FrameBox["\<\"references\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 52], InsetBox[
         FrameBox["\<\"throw\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 53], InsetBox[
         FrameBox["\<\"favourable\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 54], InsetBox[
         FrameBox["\<\"fourth\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 55], InsetBox[
         FrameBox["\<\"general\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 56], InsetBox[
         FrameBox["\<\"imperfect\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 57], InsetBox[
         FrameBox["\<\"individuals\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 58], InsetBox[
         FrameBox["\<\"infertility\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 59], InsetBox[
         FrameBox["\<\"innumerable\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 60], InsetBox[
         FrameBox["\<\"laws\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 61], InsetBox[
         FrameBox["\<\"leading\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 62], InsetBox[
         FrameBox["\<\"modification\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 63], InsetBox[
         FrameBox["\<\"namely\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 64], InsetBox[
         FrameBox["\<\"record\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 65], InsetBox[
         FrameBox["\<\"relations\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 66], InsetBox[
         FrameBox["\<\"sketch\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 67], InsetBox[
         FrameBox["\<\"sorts\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 68], InsetBox[
         FrameBox["\<\"born\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 69], InsetBox[
         FrameBox["\<\"fertility\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 70], InsetBox[
         FrameBox["\<\"furthermore\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 71], InsetBox[
         FrameBox["\<\"immutable\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 72], InsetBox[
         FrameBox["\<\"independently\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 73], InsetBox[
         FrameBox["\<\"inhabiting\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 74], InsetBox[
         FrameBox["\<\"manner\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 75], InsetBox[
         FrameBox["\<\"mystery\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 76], InsetBox[
         FrameBox["\<\"narrow\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 77], InsetBox[
         FrameBox["\<\"nevertheless\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 78], InsetBox[
         FrameBox["\<\"quite\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 79], InsetBox[
         FrameBox["\<\"ranges\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 80], InsetBox[
         FrameBox["\<\"state\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 81], InsetBox[
         FrameBox["\<\"varieties\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 82], InsetBox[
         FrameBox["\<\"year\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 83], InsetBox[
         FrameBox["\<\"succession\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 84], InsetBox[
         FrameBox["\<\"variability\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 85], InsetBox[
         FrameBox["\<\"correlation\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 86], InsetBox[
         FrameBox["\<\"domestication\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 87], InsetBox[
         FrameBox["\<\"limited\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 88], InsetBox[
         FrameBox["\<\"varying\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 89], InsetBox[
         FrameBox["\<\"volume\"\>",
          Background->RGBColor[1, 1, 0.8],
          FrameStyle->RGBColor[0.94, 0.85, 0.36],
          StripOnInput->False], 90]}}],
     Annotation[#, VertexCoordinateRules -> CompressedData["
1:eJw10Yk7FAgcxvG572HG5IjI7GazQxpdpK3fr6IopNZm6HBsKEeRUsyUbdL2
qKkUHXp0KDmWlrQVZXOsTPWMUbEhm1yJUa7JNsTY9nl23+f5Pu8f8BGG7NoQ
SiIQCAFf+vevaSdXXLkpwMvaq5I2v4/wqVXWsLXFBM3LzHgWVf3g+sohe1ky
H5cN6RjGVQYoqskgBHjwUN+ufxQDHDzyNGVpnCcXK45mjm13HYHOk9a1NiEk
zIpClyNyPSgWy71P2QowPZK4Sqrm4iy/pKb+Iia2WdlcGnxCwiFFud3lmWwM
W3RQE1pLxww3VSJxgIny1GkH6Ho2Vs0vK/ujjIYX1cNKv6sM9I5mCWVhZMwJ
fbE2epSNnddKPM8ICXjXYSO72ZCD6dOOyicXsrBIOmauM52C4zPM+vNsx8HZ
N5VyZ4Ye7h3YJut5xsFDj+pTltjTsNIqoejuTQZ2DPRLgwzoWGPr41e0zgSd
G7ZG6INbICVObOR0hIO20lPvWnz4WJlW4LjoJx6aRy8obqobB6tB67YdGwRo
uO3rfeEGVGTNCyu98ImPFm6nP+a/pqLuJG1O004DlG9ObagIJuFfv1h7la8x
wO3ZleoBKQtfOK3wdnD8DHZGgcIQ82EYK0+7paZ8hLhm+xBiFhFVGUc9nrVp
YHeXUEI0IeE5h02vH9MJmDT5UuXup4e7Z+3PuGhJaFd1Jeq2lIHuspz1AbM1
ILLePjUtZxKeSPicSzHjcDpBZtyxnoTFSYrEzH1tsFjEje4KGgLCf6u96bbq
0cwuKM3ofWKxTAPX0usdP4j7IAhcx6b8S4BhkpQgYA5Ar0bRYEHUAqdkqDZU
9DdQGmVyBpWLUOYRnBxs+MWHYt1kRMYaR6xtcaFi35bgnFYaA/dmPTiRP4+I
U8OqxHnfMTFe/FhlFsFE0a2sVxXhPJz3ofP5rkQS+m5ekkGkGqGmbnP/axEZ
V+bm74HhcUg7E7Qp/vInGNIuSCzSvIKRkM8BG891gWf2b+XkNQTsrPKyCxdS
sfkryvXoy2x0F/BcqhexkKY4fV9mxcFvokwIod0knLh/7pZu1BDb0xotnRYy
ceLGhB1lBw8Nlt4JvFI/Ci6BGQ9qmDxUXo3qCF1Lw+ZkTwr1exYuS1I+cHCn
Yulpo3aJiIW4LTKBM9kDyoTJmMMX+HhG83mD8QwWGkg9TDdzTdDFOZdQM2cE
9Lu73fX5XHzHiOxji/WgniCfMjs/Am92Z4drWimoEforTCWm+L9D+u0XM60T
NfD2sU5SWU3BP3Xebg93ktBSN7fasv4jmO3X7Tj7hoquXgVx9GwSpnvFGsOe
6bji86VuwZZe2PR8E/WYYAzEVRmSSD4VN748Qvep42Py6rPPsq7p4XnsnPSU
BApasrQHGHsnYE4XwzmqmY8F0QEdglVjUNFaGE/PoWHnoO/88G42UpSlF69Q
tZB6o8Upv3USlrt5pnbXMdFZfHh/8UpDfOhc68t2JGPJLD0tXEfEEwub4jLf
M/HgoYR1y0/ooIZsPo3AZuEaTiosYI6An7mN/dtkLSSP7XI9b8PA+OjeRpU5
BY3HXfMy04YhrODFfmohDRWd1ccNPXTwo3/DkvVPaSgJeKK2qRuGWVpW2FI9
GX9907zXx0QHO0ytokrLCQi/B2bGSIbh/ttDN2Z8y8O+5kb/yZ+nICKxOM80
mYA9sfcsB9uIeMrrhKXSjou9scWd6lodFLKrQr0VX5xlfbNtGvWwOtU/X5JJ
xT020qyBjT0gPDZztfo+AYWlmgBVxycQ6e/E0sVclI9e9FQLOfiDKjfl3Xoa
QsX0eh9/KnpbKtsK55phu1gpk6/TQLyj66MCi+lIi2X7WeWOQFfH0cHV3Om4
PSsvqIzbCkE5K99HECvBjxhCm6sYheez5ZXzfbloZmF5fcKLgf8AKgR0tQ==

       "]]& ],
    AspectRatio->Automatic,
    FrameTicks->None,
    ImageSize->{1100, 800},
    PlotRange->All,
    PlotRangePadding->Scaled[0.1]],
   ImageSize->{400, 400},
   ScrollPosition->{400., 200.},
   Scrollbars->True],
  StripOnInput->False]], "Output",
 CellChangeTimes->{
  3.5623249178058167`*^9, 3.5623250515951033`*^9, {3.562325226134234*^9, 
   3.562325249139447*^9}, {3.5623253065565357`*^9, 3.562325361729618*^9}, {
   3.562325411929564*^9, 3.562325438116972*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Document Frequencies", "Subsection",
 CellChangeTimes->{{3.562325731375288*^9, 3.562325738171823*^9}}],

Cell[TextData[{
 "We have been looking at the Introduction to ",
 StyleBox["Origin",
  FontSlant->"Italic"],
 ". We can also calculate word frequencies for the whole document. When we \
list the fifty most common words (not including stop words) we can get a \
better sense of what the whole book is about."
}], "Text",
 CellChangeTimes->{{3.562325749817523*^9, 3.56232579854653*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"sampleList", "=", 
   RowBox[{"Map", "[", 
    RowBox[{"ToLowerCase", ",", 
     RowBox[{"StringSplit", "[", 
      RowBox[{"sample", ",", 
       RowBox[{
        RowBox[{"Except", "[", "WordCharacter", "]"}], ".."}]}], "]"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"docFreq", "=", 
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"Tally", "[", 
      RowBox[{"Sort", "[", "sampleList", "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
       ">", 
       RowBox[{"#2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
       "&"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Take", "[", 
  RowBox[{
   RowBox[{"Select", "[", 
    RowBox[{
     RowBox[{"Take", "[", 
      RowBox[{"docFreq", ",", "200"}], "]"}], ",", 
     RowBox[{
      RowBox[{"Not", "[", 
       RowBox[{"MemberQ", "[", 
        RowBox[{"stopWords", ",", 
         RowBox[{"First", "[", "#", "]"}]}], "]"}], "]"}], "&"}]}], "]"}], 
   ",", "50"}], "]"}]}], "Input",
 CellChangeTimes->{{3.547022048665861*^9, 3.54702206566894*^9}, {
   3.547022219499251*^9, 3.54702222715679*^9}, {3.5470283296396093`*^9, 
   3.547028392094002*^9}, 3.547034119088517*^9, {3.562325806406304*^9, 
   3.562325807559642*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\<\"species\"\>", ",", "1489"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"forms\"\>", ",", "397"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"varieties\"\>", ",", "396"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"selection\"\>", ",", "383"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"natural\"\>", ",", "361"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"life\"\>", ",", "298"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"plants\"\>", ",", "297"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"different\"\>", ",", "282"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"case\"\>", ",", "281"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"animals\"\>", ",", "280"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"great\"\>", ",", "260"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"distinct\"\>", ",", "255"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"nature\"\>", ",", "253"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"having\"\>", ",", "252"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"new\"\>", ",", "244"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"long\"\>", ",", "243"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"period\"\>", ",", "238"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"cases\"\>", ",", "224"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"believe\"\>", ",", "216"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"structure\"\>", ",", "214"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"conditions\"\>", ",", "211"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"genera\"\>", ",", "210"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"generally\"\>", ",", "199"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"number\"\>", ",", "198"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"common\"\>", ",", "194"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"far\"\>", ",", "193"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"time\"\>", ",", "191"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"degree\"\>", ",", "190"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"groups\"\>", ",", "173"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"characters\"\>", ",", "170"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"certain\"\>", ",", "169"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"view\"\>", ",", "168"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"large\"\>", ",", "168"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"instance\"\>", ",", "165"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"modification\"\>", ",", "161"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"facts\"\>", ",", "157"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"closely\"\>", ",", "155"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"parts\"\>", ",", "154"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"intermediate\"\>", ",", "154"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"modified\"\>", ",", "153"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"genus\"\>", ",", "147"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"present\"\>", ",", "143"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"birds\"\>", ",", "143"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"produced\"\>", ",", "141"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"individuals\"\>", ",", "140"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"inhabitants\"\>", ",", "139"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"parent\"\>", ",", "138"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"world\"\>", ",", "136"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"character\"\>", ",", "136"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\<\"organic\"\>", ",", "135"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.5623258110069304`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
TF-IDF: Term frequency-Inverse document frequency\
\>", "Subsection",
 CellChangeTimes->{3.562325837979517*^9}],

Cell["\<\
The basic intuition behind tf-idf is as follows...\
\>", "Text",
 CellChangeTimes->{{3.5623258544008408`*^9, 3.562325862301536*^9}}],

Cell["\<\
A word that occurs frequently on every page doesn't tell you anything special \
about that page. It is a stop word.
A word that occurs only a few times in the whole document or corpus can be \
ignored.
A word that occurs a number of times on one page but is relatively rare in \
the document or corpus overall can give you some idea what the page is about.\
\
\>", "Text",
 CellChangeTimes->{{3.5623258544008408`*^9, 3.56232588643292*^9}}],

Cell["\<\
Here is one way to calculate tf-idf (there are lots of different versions)\
\>", "Text",
 CellChangeTimes->{{3.5623258544008408`*^9, 3.5623258769530573`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"tfidf", "[", 
   RowBox[{"termfreq_", ",", "docfreq_", ",", "numdocs_"}], "]"}], ":=", 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Log", "[", 
    RowBox[{"termfreq", "+", "1.0"}], "]"}], " ", 
   RowBox[{"Log", "[", 
    RowBox[{"numdocs", "/", "docfreq"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.5124909962548237`*^9, 3.5124910390188837`*^9}}],

Cell["\<\
Using document frequencies and TF-IDF we can get a sense of what different \
parts of a text are about. Here is how we would analyze chapter 9 (there are \
15 chapters in all).\
\>", "Text",
 CellChangeTimes->{{3.562325908168535*^9, 3.562325977079001*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ch9", "=", 
   RowBox[{
    RowBox[{"StringCases", "[", 
     RowBox[{"sample", ",", 
      RowBox[{"Shortest", "[", 
       RowBox[{"\"\<CHAPTER 9\>\"", "~~", "__", "~~", "\"\<CHAPTER\>\""}], 
       "]"}]}], "]"}], "\[LeftDoubleBracket]", "1", 
    "\[RightDoubleBracket]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ch9List", "=", 
   RowBox[{"Map", "[", 
    RowBox[{"ToLowerCase", ",", 
     RowBox[{"StringSplit", "[", 
      RowBox[{"ch9", ",", 
       RowBox[{
        RowBox[{"Except", "[", "WordCharacter", "]"}], ".."}]}], "]"}]}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ch9Terms", "=", 
   RowBox[{"Union", "[", "ch9List", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ch9TermFreq", "=", 
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"Tally", "[", "ch9List", "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
       ">", 
       RowBox[{"#2", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
       "&"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ch9DocFreq", "=", 
   RowBox[{"Select", "[", 
    RowBox[{"docFreq", ",", 
     RowBox[{
      RowBox[{"MemberQ", "[", 
       RowBox[{"ch9Terms", ",", 
        RowBox[{"#", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
        "]"}], "&"}]}], "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.5470292455489273`*^9, 3.547029295676169*^9}, 
   3.5470293735149612`*^9, 3.5470294370036583`*^9, {3.547029501585433*^9, 
   3.547029523385488*^9}, {3.54702960971285*^9, 3.547029617049231*^9}, {
   3.547029698870226*^9, 3.547029703658392*^9}, 3.547029782244587*^9, {
   3.547030322879662*^9, 3.547030379302886*^9}, {3.547031097624631*^9, 
   3.547031110569645*^9}, {3.547032843403961*^9, 3.547032871142591*^9}, 
   3.547034164068964*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"computeTFIDF", "[", 
   RowBox[{"termlist_", ",", "tflist_", ",", "dflist_"}], "]"}], ":=", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"outlist", ",", "tf", ",", "df"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"outlist", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Do", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"tf", "=", 
         RowBox[{
          RowBox[{"Cases", "[", 
           RowBox[{"tflist", ",", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"t", ",", "x_"}], "}"}], "\[Rule]", "x"}]}], "]"}], 
          "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"df", "=", 
         RowBox[{
          RowBox[{"Cases", "[", 
           RowBox[{"dflist", ",", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"t", ",", "x_"}], "}"}], "\[Rule]", "x"}]}], "]"}], 
          "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"outlist", "=", 
         RowBox[{"Append", "[", 
          RowBox[{"outlist", ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "tf", ",", "df", ",", 
             RowBox[{"tfidf", "[", 
              RowBox[{"tf", ",", "df", ",", "15.0"}], "]"}]}], "}"}]}], 
          "]"}]}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"t", ",", "termlist"}], "}"}]}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Return", "[", "outlist", "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.54703151452752*^9, 3.54703152014762*^9}, {
   3.547031561185525*^9, 3.5470315917716227`*^9}, {3.547031736837302*^9, 
   3.547031838174638*^9}, {3.5470318868395348`*^9, 3.547031914335375*^9}, {
   3.5470319821810713`*^9, 3.547032083256281*^9}, {3.547032127995277*^9, 
   3.547032171050722*^9}, {3.5470322070789347`*^9, 3.5470322105749903`*^9}, {
   3.547032402580517*^9, 3.547032403021102*^9}, 3.547032714540661*^9, {
   3.547033262948254*^9, 3.5470332630348463`*^9}, 3.547035928521545*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"ch9TFIDF", "=", 
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"computeTFIDF", "[", 
      RowBox[{"ch9Terms", ",", "ch9TermFreq", ",", "ch9DocFreq"}], "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}], 
       ">", 
       RowBox[{"#2", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}]}],
       "&"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Take", "[", 
   RowBox[{"ch9TFIDF", ",", "50"}], "]"}], "\[LeftDoubleBracket]", 
  RowBox[{"All", ",", "1"}], "\[RightDoubleBracket]"}]}], "Input",
 CellChangeTimes->{{3.5470315943677197`*^9, 3.5470316620577793`*^9}, {
  3.547032323827345*^9, 3.547032337529541*^9}, {3.547032911696452*^9, 
  3.547032922240966*^9}, {3.56232602926597*^9, 3.5623260303144693`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"teleostean\"\>", ",", "\<\"tapir\"\>", ",", "\<\"richest\"\>", 
   ",", "\<\"pebbles\"\>", ",", "\<\"mississippi\"\>", ",", "\<\"downs\"\>", 
   ",", "\<\"decay\"\>", ",", "\<\"conchologists\"\>", ",", "\<\"wear\"\>", 
   ",", "\<\"thinner\"\>", ",", "\<\"tear\"\>", ",", "\<\"supplement\"\>", 
   ",", "\<\"superimposed\"\>", ",", "\<\"sedgwick\"\>", 
   ",", "\<\"rolled\"\>", ",", "\<\"poorness\"\>", ",", "\<\"nodules\"\>", 
   ",", "\<\"mineralogical\"\>", ",", "\<\"levels\"\>", 
   ",", "\<\"inadequate\"\>", ",", "\<\"grinding\"\>", ",", "\<\"gravel\"\>", 
   ",", "\<\"downward\"\>", ",", "\<\"denuded\"\>", ",", "\<\"comprehend\"\>",
    ",", "\<\"chthamalus\"\>", ",", "\<\"atom\"\>", 
   ",", "\<\"accumulations\"\>", ",", "\<\"sand\"\>", ",", "\<\"ramsay\"\>", 
   ",", "\<\"littoral\"\>", ",", "\<\"sedimentary\"\>", ",", "\<\"wears\"\>", 
   ",", "\<\"wearing\"\>", ",", "\<\"wealden\"\>", ",", "\<\"watermark\"\>", 
   ",", "\<\"watch\"\>", ",", "\<\"vehemently\"\>", ",", "\<\"valve\"\>", 
   ",", "\<\"upright\"\>", ",", "\<\"unimproved\"\>", 
   ",", "\<\"unfathomable\"\>", ",", "\<\"undermined\"\>", 
   ",", "\<\"underlies\"\>", ",", "\<\"unanimously\"\>", 
   ",", "\<\"ubiquitous\"\>", ",", "\<\"transmutation\"\>", 
   ",", "\<\"tides\"\>", ",", "\<\"tidal\"\>", ",", "\<\"swarmed\"\>"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.562326034809412*^9}]
}, Open  ]],

Cell["\<\
Whether or not you are familiar with nineteenth-century science, it should be \
clear that the chapter has something to do with geology. Darwin also provided \
chapter summaries of his own:\
\>", "Text",
 CellChangeTimes->{{3.562326163890539*^9, 3.5623262142637444`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StringTake", "[", 
  RowBox[{"ch9", ",", "548"}], "]"}]], "Input",
 CellChangeTimes->{{3.547033000279071*^9, 3.547033001630723*^9}, {
  3.54703304661331*^9, 3.547033086303193*^9}, {3.562326228946951*^9, 
  3.562326254744359*^9}}],

Cell[BoxData["\<\"CHAPTER 9. ON THE IMPERFECTION OF THE GEOLOGICAL RECORD. On \
the absence of intermediate varieties at the present day. On the nature of \
extinct intermediate varieties; on their number. On the vast lapse of time, \
as inferred from the rate of deposition and of denudation. On the poorness of \
our palaeontological collections. On the intermittence of geological \
formations. On the absence of intermediate varieties in any one formation. On \
the sudden appearance of groups of species. On their sudden appearance in the \
lowest known fossiliferous strata.\"\>"], "Output",
 CellChangeTimes->{{3.562326223729416*^9, 3.562326255285418*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{801, 803},
WindowMargins->{{51, Automatic}, {Automatic, 19}},
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 1.25, 1.25 Inherited],
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 170, 5, 154, "Title"],
Cell[1430, 39, 342, 9, 89, "Subtitle"],
Cell[1775, 50, 101, 1, 57, "Subtitle"],
Cell[CellGroupData[{
Cell[1901, 55, 102, 1, 42, "Subsection"],
Cell[2006, 58, 1547, 31, 201, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3590, 94, 111, 1, 42, "Subsection"],
Cell[3704, 97, 529, 15, 70, "Text"],
Cell[CellGroupData[{
Cell[4258, 116, 455, 11, 53, "Input"],
Cell[4716, 129, 240, 5, 47, "Output"]
}, Open  ]],
Cell[4971, 137, 295, 9, 51, "Text"],
Cell[CellGroupData[{
Cell[5291, 150, 62, 1, 33, "Input"],
Cell[5356, 153, 99, 1, 33, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[5504, 160, 117, 1, 42, "Subsection"],
Cell[5624, 163, 1020, 22, 126, "Text"],
Cell[CellGroupData[{
Cell[6669, 189, 669, 15, 72, "Input"],
Cell[7341, 206, 362, 7, 105, "Output"]
}, Open  ]],
Cell[7718, 216, 745, 15, 89, "Text"],
Cell[CellGroupData[{
Cell[8488, 235, 274, 5, 33, "Input"],
Cell[8765, 242, 160, 3, 33, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8962, 250, 361, 8, 33, "Input"],
Cell[9326, 260, 152, 3, 33, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[9527, 269, 130, 3, 42, "Subsection"],
Cell[9660, 274, 366, 6, 70, "Text"],
Cell[CellGroupData[{
Cell[10051, 284, 456, 12, 53, "Input"],
Cell[10510, 298, 660, 13, 67, "Output"]
}, Open  ]],
Cell[11185, 314, 393, 10, 51, "Text"],
Cell[CellGroupData[{
Cell[11603, 328, 253, 5, 33, "Input"],
Cell[11859, 335, 1034, 16, 91, "Output"]
}, Open  ]],
Cell[12908, 354, 376, 12, 51, "Text"],
Cell[CellGroupData[{
Cell[13309, 370, 181, 3, 33, "Input"],
Cell[13493, 375, 111, 1, 33, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13641, 381, 262, 5, 33, "Input"],
Cell[13906, 388, 303, 7, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14246, 400, 133, 2, 33, "Input"],
Cell[14382, 404, 108, 1, 33, "Output"]
}, Open  ]],
Cell[14505, 408, 195, 6, 32, "Text"],
Cell[CellGroupData[{
Cell[14725, 418, 271, 5, 33, "Input"],
Cell[14999, 425, 133, 2, 33, "Output"]
}, Open  ]],
Cell[15147, 430, 228, 6, 32, "Text"],
Cell[CellGroupData[{
Cell[15400, 440, 275, 5, 33, "Input"],
Cell[15678, 447, 95, 1, 33, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15810, 453, 223, 4, 33, "Input"],
Cell[16036, 459, 95, 1, 33, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[16180, 466, 152, 3, 42, "Subsection"],
Cell[16335, 471, 571, 15, 70, "Text"],
Cell[CellGroupData[{
Cell[16931, 490, 272, 6, 33, "Input"],
Cell[17206, 498, 1014, 16, 91, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18257, 519, 293, 6, 33, "Input"],
Cell[18553, 527, 1012, 16, 91, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19602, 548, 252, 6, 33, "Input"],
Cell[19857, 556, 526, 9, 53, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[20432, 571, 116, 1, 42, "Subsection"],
Cell[20551, 574, 429, 9, 70, "Text"],
Cell[CellGroupData[{
Cell[21005, 587, 654, 16, 91, "Input"],
Cell[21662, 605, 470, 14, 47, "Output"]
}, Open  ]],
Cell[22147, 622, 625, 13, 89, "Text"],
Cell[CellGroupData[{
Cell[22797, 639, 582, 14, 53, "Input"],
Cell[23382, 655, 1915, 52, 124, "Output"]
}, Open  ]],
Cell[25312, 710, 130, 3, 32, "Text"],
Cell[CellGroupData[{
Cell[25467, 717, 167, 3, 33, "Input"],
Cell[25637, 722, 1495, 43, 72, "Output"]
}, Open  ]],
Cell[27147, 768, 330, 8, 51, "Text"],
Cell[CellGroupData[{
Cell[27502, 780, 294, 6, 33, "Input"],
Cell[27799, 788, 158, 4, 33, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[28006, 798, 113, 1, 42, "Subsection"],
Cell[28122, 801, 340, 10, 51, "Text"],
Cell[28465, 813, 305, 6, 53, "Input"],
Cell[CellGroupData[{
Cell[28795, 823, 208, 5, 33, "Input"],
Cell[29006, 830, 125, 3, 33, "Output"]
}, Open  ]],
Cell[29146, 836, 467, 12, 70, "Text"],
Cell[29616, 850, 419, 15, 51, "Text"],
Cell[30038, 867, 67, 1, 32, "Text"],
Cell[30108, 870, 203, 4, 32, "Text"],
Cell[CellGroupData[{
Cell[30336, 878, 247, 7, 33, "Input"],
Cell[30586, 887, 125, 3, 33, "Output"]
}, Open  ]],
Cell[30726, 893, 150, 3, 32, "Text"],
Cell[CellGroupData[{
Cell[30901, 900, 188, 5, 33, "Input"],
Cell[31092, 907, 71, 1, 33, "Output"]
}, Open  ]],
Cell[31178, 911, 292, 7, 51, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31507, 923, 146, 2, 42, "Subsection"],
Cell[31656, 927, 411, 11, 51, "Text"],
Cell[CellGroupData[{
Cell[32092, 942, 493, 10, 53, "Input"],
Cell[32588, 954, 1727, 43, 105, "Output"]
}, Open  ]],
Cell[34330, 1000, 101, 3, 32, "Text"],
Cell[CellGroupData[{
Cell[34456, 1007, 763, 17, 53, "Input"],
Cell[35222, 1026, 2476, 84, 124, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[37747, 1116, 130, 3, 42, "Subsection"],
Cell[37880, 1121, 597, 14, 70, "Text"],
Cell[CellGroupData[{
Cell[38502, 1139, 607, 14, 53, "Input"],
Cell[39112, 1155, 1063, 25, 123, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[40224, 1186, 107, 1, 42, "Subsection"],
Cell[40334, 1189, 214, 6, 32, "Text"],
Cell[CellGroupData[{
Cell[40573, 1199, 421, 9, 53, "Input"],
Cell[40997, 1210, 771, 14, 67, "Output"]
}, Open  ]],
Cell[41783, 1227, 457, 10, 51, "Text"],
Cell[CellGroupData[{
Cell[42265, 1241, 260, 5, 33, "Input"],
Cell[42528, 1248, 1110, 19, 105, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[43675, 1272, 574, 14, 72, "Input"],
Cell[44252, 1288, 916, 17, 105, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[45217, 1311, 138, 3, 42, "Subsection"],
Cell[45358, 1316, 469, 8, 51, "Text"],
Cell[CellGroupData[{
Cell[45852, 1328, 1103, 25, 72, "Input"],
Cell[46958, 1355, 829, 23, 53, "Output"]
}, Open  ]],
Cell[47802, 1381, 144, 3, 32, "Text"],
Cell[47949, 1386, 713, 15, 33, "Input"],
Cell[48665, 1403, 204, 4, 32, "Text"],
Cell[CellGroupData[{
Cell[48894, 1411, 984, 22, 53, "Input"],
Cell[49881, 1435, 638, 12, 67, "Output"]
}, Open  ]],
Cell[50534, 1450, 121, 3, 32, "Text"],
Cell[CellGroupData[{
Cell[50680, 1457, 962, 25, 72, "Input"],
Cell[51645, 1484, 634, 12, 67, "Output"]
}, Open  ]],
Cell[52294, 1499, 276, 5, 51, "Text"],
Cell[CellGroupData[{
Cell[52595, 1508, 1315, 30, 129, "Input"],
Cell[53913, 1540, 24404, 504, 532, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[78366, 2050, 108, 1, 42, "Subsection"],
Cell[78477, 2053, 384, 8, 70, "Text"],
Cell[CellGroupData[{
Cell[78886, 2065, 1321, 37, 110, "Input"],
Cell[80210, 2104, 3837, 103, 243, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[84096, 2213, 121, 3, 42, "Subsection"],
Cell[84220, 2218, 142, 3, 32, "Text"],
Cell[84365, 2223, 449, 9, 107, "Text"],
Cell[84817, 2234, 168, 3, 32, "Text"],
Cell[84988, 2239, 390, 10, 53, "Input"],
Cell[85381, 2251, 266, 5, 51, "Text"],
Cell[85650, 2258, 1864, 48, 110, "Input"],
Cell[87517, 2308, 2194, 52, 186, "Input"],
Cell[CellGroupData[{
Cell[89736, 2364, 844, 19, 72, "Input"],
Cell[90583, 2385, 1420, 22, 167, "Output"]
}, Open  ]],
Cell[92018, 2410, 281, 5, 51, "Text"],
Cell[CellGroupData[{
Cell[92324, 2419, 253, 5, 33, "Input"],
Cell[92580, 2426, 663, 8, 186, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ouDBFZbW2MiH@BK5GJs1#vDV *)
