//@ts-check
const fs = require("fs");
const sounds = require("../resourcepack/assets/arc86/sounds.json");
const tickLines = [];
const psLines = [];

Object.keys(sounds).map(key => {
	const { id, endTicks } = sounds[key];
	if (!id || !endTicks) return;
	tickLines.push(
		`execute if score @s currentVoicelog matches ${id} if score @s voicelogTime matches ${endTicks}.. run function arc86:voicelogs/ps_over`
	);
	psLines.push(
		`execute if score @s currentVoicelog matches ${id} run playsound arc86:${key} voice @s ~ ~ ~ 1 1 1`
	);
});

const psOut = `# Auto-generated by voicelog.js
# Edit sounds.json def and rerun to edit
scoreboard players set @s voicelogTime 0

${psLines.join("\n")}

`;
const tickOut = `# Auto-generated by voicelog.js
# Edit sounds.json def and rerun to edit

${tickLines.join("\n")}

`;

fs.writeFileSync(
	require("path").join(
		__dirname,
		"data",
		"arc86",
		"functions",
		"voicelogs",
		"genps.mcfunction"
	),
	psOut,
	{ encoding: "utf8" }
);
fs.writeFileSync(
	require("path").join(
		__dirname,
		"data",
		"arc86",
		"functions",
		"voicelogs",
		"genpstick.mcfunction"
	),
	tickOut,
	{ encoding: "utf8" }
);
