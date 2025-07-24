import fs from "fs";

let rawConfig = fs.readFileSync("config/config.json", "utf-8");

let parsedConfig = JSON.parse(
  rawConfig.replace(/\$\{(.*?)\}/g, (_, name) => process.env[name] || "")
);

export default parsedConfig;
