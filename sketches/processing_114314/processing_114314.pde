
int c;
int h=729;
int z=0;
PFont f;
void setup() {
  f = createFont("Arial", 16, true);
  size(783, 783);
  background(0);
  smooth(8);
  textFont(f, 16);
}
int [] m = 
{
  0,28,56,84,112,140,168,196,224,252,280,308,336,364,392,420,448,476,504,532,560,588,616,644,672,700,728,
29,388,285,605,77,516,506,343,148,438,125,194,305,93,4,459,720,622,591,238,657,187,358,419,691,566,264,
57,292,416,313,633,105,544,534,371,176,466,153,222,333,121,5,486,46,650,619,266,685,215,386,447,719,568,
85,596,320,444,341,661,133,572,562,399,204,494,181,250,361,149,6,513,74,678,647,294,713,217,414,475,45,
113,73,624,348,472,369,689,161,600,590,427,232,522,209,278,389,177,7,540,102,706,649,322,39,245,442,503,
141,531,101,652,376,500,397,717,163,628,618,455,260,550,237,306,417,205,8,567,130,32,677,350,67,273,470,
169,498,559,129,680,404,528,425,43,191,656,646,483,288,578,265,334,445,233,9,594,158,60,705,352,95,301,
197,329,526,587,157,708,406,556,453,71,219,684,674,511,316,606,293,362,473,261,10,621,186,88,31,380,123,
225,151,357,554,615,185,34,434,584,481,99,247,712,676,539,344,634,321,390,501,289,11,648,214,116,59,408,
253,436,179,385,582,643,213,62,462,612,509,127,275,38,704,541,372,662,349,418,529,317,12,675,242,144,87,
281,115,464,207,413,610,671,241,90,490,640,537,155,303,66,30,569,400,690,377,446,557,345,13,702,244,172,
309,200,143,492,235,441,638,699,269,118,518,668,565,183,331,94,58,597,428,718,379,474,585,373,14,27,272,
337,300,228,171,520,263,469,666,727,271,146,546,696,593,211,359,122,86,625,456,44,407,502,613,401,15,54,
365,81,328,256,199,548,291,497,694,53,299,174,574,724,595,239,387,150,114,653,484,72,435,530,641,429,16,
393,17,108,356,284,227,576,319,525,722,55,327,202,602,50,623,267,415,178,142,681,512,100,463,558,669,457,
421,485,18,135,384,312,255,604,347,553,48,83,355,230,630,78,651,295,443,206,170,709,514,128,491,586,697,
449,725,487,19,162,412,340,283,632,375,581,76,111,383,258,658,106,679,323,471,234,198,35,542,156,519,614,
477,642,51,515,20,189,440,368,311,660,403,609,104,139,411,286,686,134,707,325,499,262,226,63,570,184,547,
505,575,670,79,543,21,216,468,396,339,688,431,637,132,167,439,314,714,136,33,353,527,290,254,91,598,212,
533,240,603,698,107,571,22,243,496,424,367,716,433,665,160,195,467,342,40,164,61,381,555,318,282,119,626,
561,654,268,631,726,109,599,23,270,524,452,395,42,461,693,188,223,495,370,68,192,89,409,583,346,310,147,
589,175,682,296,659,52,137,627,24,297,552,480,423,70,489,721,190,251,523,398,96,220,117,437,611,374,338,
617,366,203,710,298,687,80,165,655,25,324,580,508,451,98,517,47,218,279,551,426,124,248,145,465,639,402,
645,430,394,231,36,326,715,82,193,683,26,351,608,536,479,126,545,75,246,307,579,454,152,276,173,493,667,
673,695,458,422,259,64,354,41,110,221,711,1,378,636,564,507,154,573,103,274,335,607,482,180,304,201,521,
701,549,723,460,450,287,92,382,69,138,249,37,2,405,664,592,535,182,601,131,302,363,635,510,208,332,229,
703,257,577,49,488,478,315,120,410,97,166,277,65,3,432,692,620,563,210,629,159,330,391,663,538,236,360,
};
void draw() {
  for (int j= 0; j < 783; j=j+29) {
    for (int i= 0; i < 783; i=i+29) {
      c= m[z];
      colorMode(HSB, h, h, h);
      fill(c, h, h);
      rect(j, i, 29, 29);
      fill(0);
      text(c, j+2, i+21);
      z=z+1;
    }
  }
  z=0;
}


