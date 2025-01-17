#include "util.glsl"

float hash(float seed) {
    return fract(sin(
        dot(
            vec4(seed, -seed, -seed, seed),
            vec4(761.8987489124454, 336.8704743363988, 572.5431331132336, 726.6898810590808)
        )
    ) * 423.2840408763668);
}

float hash(vec2 coord) {
    return fract(sin(
        dot(
            vec4(coord.y - coord.x, coord.x + coord.y, coord.y + coord.x, coord.x - coord.y),
            vec4(366.8129966514382, 481.70238159748754, 151.51151312158694, 717.2604250865193)
        )
    ) * 873.4921159235379);
}

float hash(vec3 coord) {
    return fract(sin(
        dot(
            vec4(coord.x + coord.z, coord.y - coord.z, coord.y + coord.x, coord.x + coord.z),
            vec4(405.2835604411656, 477.84637103779556, 481.70665099479146, 357.0167351080298)
        )
    ) * 345.44033104403445);
}

float hash(vec4 coord) {
    return fract(sin(
        dot(
            vec4(coord.y - coord.z, coord.x - coord.w, coord.z + coord.x, coord.y - coord.w),
            vec4(139.39934859560805, 334.1448816878399, 422.6831072396121, 183.52196264537898)
        )
    ) * 313.31027607517706);
}

vec2 hash2(float seed) {
    return fract(sin(vec2(
        dot(
            vec4(seed, -seed, -seed, seed),
            vec4(351.53943982194596, 470.2497063575603, 901.3961019289238, 812.363774072087)
        ),
        dot(
            vec4(seed, -seed, seed, -seed),
            vec4(173.55053438017373, 515.9604128819254, 131.8868328109064, 562.99216608646)
        )
    )) * vec2(161.03825528026792, 918.1401763577494));
}

vec2 hash2(vec2 coord) {
    return fract(sin(vec2(
        dot(
            coord.yxxy,
            vec4(460.9842420235098, 973.2423728073081, 588.5142955142678, 779.0252107742082)
        ),
        dot(
            coord.xyxy,
            vec4(468.3300993006091, 785.4605808511443, 542.5328086559783, 334.7402010849341)
        )
    )) * vec2(413.61459561483235, 780.9689542418901));
}

vec2 hash2(vec3 coord) {
    return fract(sin(vec2(
        dot(
            coord.yzxy,
            vec4(655.9338666526094, 633.9686652628592, 161.86040184797923, 882.000794813311)
        ),
        dot(
            coord.xyzx,
            vec4(534.4738888768981, 362.6035306658847, 759.6384016201101, 809.5924817579971)
        )
    )) * vec2(744.2144281628563, 268.9018299680315));
}

vec2 hash2(vec4 coord) {
    return fract(sin(vec2(
        dot(
            coord.wzxy,
            vec4(223.90625505320313, 766.9339566943137, 622.8708988534686, 930.3111940081806)
        ),
        dot(
            coord.zxwy,
            vec4(403.3857059281976, 137.43254383153672, 452.52072966736216, 839.9022225016812)
        )
    )) * vec2(474.2355187527352, 149.9059635934291));
}

vec3 hash3(float seed) {
    return fract(sin(vec3(
        dot(
            vec4(seed, -seed, -seed, seed),
            vec4(800.5783139914503, 700.6710240955288, 657.8696545649956, 282.9870398410184)
        ),
        dot(
            vec4(-seed, -seed, seed, seed),
            vec4(461.4716162841613, 210.19675180759697, 445.73508850091997, 410.5438510950675)
        ),
        dot(
            vec4(-seed, seed, -seed, -seed),
            vec4(242.39190819386866, 770.7267932674196, 879.5977360381867, 934.4099623920741)
        )
    )) * vec3(243.49210927663077, 844.5148182689892, 485.8577674697771));
}

vec3 hash3(vec2 coord) {
    return fract(sin(vec3(
        dot(
            coord.yyxy,
            vec4(576.0799047122425, 136.91911660968856, 541.5517934801308, 395.90550871163583)
        ),
        dot(
            coord.xxyx,
            vec4(884.1309556213652, 795.4037223592819, 704.3738602165092, 463.45560872722587)
        ),
        dot(
            coord.yxyx,
            vec4(449.1103323868747, 394.57791922981323, 935.3426884709838, 201.91878857470357)
        )
    )) * vec3(779.4575841770885, 786.6254782995405, 699.3003599817262));
}

vec3 hash3(vec3 coord) {
    return fract(sin(vec3(
        dot(
            coord.yzxz,
            vec4(343.58167470541423, 954.5239568400168, 586.1338706167467, 242.16966561496142)
        ),
        dot(
            coord.xzyy,
            vec4(332.5194286239338, 931.2793339500103, 914.5374505452331, 311.7010000141805)
        ),
        dot(
            coord.zxyx,
            vec4(834.0423532375474, 622.3234184083732, 798.3096366409592, 878.5178210860016)
        )
    )) * vec3(151.5148269428205, 145.53980271229835, 640.9251022264967));
}

vec3 hash3(vec4 coord) {
    return fract(sin(vec3(
        dot(
            coord.wzyx,
            vec4(559.8085018941376, 412.9529183740164, 857.4195895675216, 771.6762465793182)
        ),
        dot(
            coord.xzwy,
            vec4(214.71506866508759, 441.3560376141701, 105.95477358864906, 346.76148821333595)
        ),
        dot(
            coord.zyxw,
            vec4(857.7102874970724, 635.7879961564933, 660.0139876687739, 276.438597802165)
        )
    )) * vec3(654.9628255570626, 797.1678461632099, 571.4003236347426));
}

vec4 hash4(float seed) {
    return fract(sin(vec4(
        dot(
            vec4(seed, -seed, -seed, seed),
            vec4(601.346378455294, 900.1469517689965, 856.2951364699953, 262.3891393944705)
        ),
        dot(
            vec4(-seed, -seed, seed, -seed),
            vec4(476.43149087547005, 461.40225721096, 185.06123624149117, 398.35807752582724)
        ),
        dot(
            vec4(-seed, seed, -seed, seed),
            vec4(236.7381328808895, 994.6407691924105, 490.73783794222135, 130.52012372552508)
        ),
        dot(
            vec4(seed, -seed, seed, seed),
            vec4(717.9068669494233, 734.1824633622077, 971.0903546430114, 102.69469311018466)
        )
    )) * vec4(338.47598173112954, 490.8417338050242, 185.16766819193333, 553.936048611705));
}

vec4 hash4(vec2 coord) {
    return fract(sin(vec4(
        dot(
            coord.yyxx,
            vec4(240.41052992757167, 817.7271762165229, 378.11237576460434, 621.063282189313)
        ),
        dot(
            coord.yxxy,
            vec4(360.09969819912766, 847.1744323482324, 912.6839802907366, 380.54938536849863)
        ),
        dot(
            coord.yxyx,
            vec4(984.4109911409249, 118.67537057898662, 915.5270292425354, 207.92897548696897)
        ),
        dot(
            coord.xyyx,
            vec4(500.0613196544399, 101.0575917007407, 154.99411710430553, 716.7168441472238)
        )
    )) * vec4(152.04537835171698, 336.66505375392745, 598.1142581206556, 507.2026657695887));
}

vec4 hash4(vec3 coord) {
    return fract(sin(vec4(
        dot(
            coord.xyzy,
            vec4(210.1931303821794, 597.7523616207832, 595.4468578828271, 308.80882814221366)
        ),
        dot(
            coord.yzzx,
            vec4(212.01466111074978, 680.6855981107519, 591.8150121063823, 933.5818887257872)
        ),
        dot(
            coord.xyzx,
            vec4(259.44425900166095, 823.1114226019129, 191.15207589777083, 908.2191763402909)
        ),
        dot(
            coord.xzyx,
            vec4(390.4630882635533, 542.6014993747732, 880.535000358139, 882.6391107385637)
        )
    )) * vec4(885.6870418301967, 801.2381690842644, 240.33106438218158, 695.8638344703713));
}

vec4 hash4(vec4 coord) {
    return fract(sin(vec4(
        dot(
            coord.yzwx,
            vec4(335.6332204101445, 844.8393454677991, 810.1418451506594, 668.1007506692549)
        ),
        dot(
            coord.xwzy,
            vec4(707.1831997882292, 409.8034393636181, 896.1179456381626, 903.6870113977019)
        ),
        dot(
            coord.xzwy,
            vec4(821.1243714846909, 229.4719146397581, 892.3406557603636, 838.7898446544523)
        ),
        dot(
            coord.zywx,
            vec4(464.89727589315544, 270.3103263969681, 126.34767654640362, 921.9804102615055)
        )
    )) * vec4(533.3603890115071, 980.7478526020319, 286.578245761051, 285.8875700806386));
}