/*
 * @Author: conjurer
 * @Github: https://github.com/dot123
 * @Date: 2019-11-13 14:11:23
 * @LastEditors: conjurer
 * @LastEditTime: 2019-11-13 15:28:27
 * @Description:
 */
const JavaScriptObfuscator = require("javascript-obfuscator");
const fs = require("fs");
const rimraf = require("rimraf");
const commander = require("commander");
const path = require("path");

commander
    .version("0.1.0")
    .option("-i, --inputDir <inputDir>", "input directory")
    .option("-o, --outputDir <outputDir>", "output directory")
    .parse(process.argv);

const inputDir = commander.inputDir;
const outputDir = commander.outputDir;

rimraf.sync(outputDir);
fs.mkdirSync(outputDir);

fs.readdir(inputDir, function(err, files) {
    if (err) {
        throw err;
    }

    files.forEach(function(fileName) {
        fileName = fileName.split(".")[0];

        fs.readFile(path.join(inputDir, fileName) + ".js", "utf-8", function(error, data) {
            var obfuscationResult = JavaScriptObfuscator.obfuscate(data, {
                compact: false, //
                controlFlowFlattening: false,
                deadCodeInjection: false,
                debugProtection: false,
                debugProtectionInterval: false,
                disableConsoleOutput: false,
                identifierNamesGenerator: "hexadecimal",
                log: false,
                renameGlobals: false,
                rotateStringArray: true,
                selfDefending: false, //
                stringArray: true,
                stringArrayEncoding: false,
                stringArrayThreshold: 0.75,
                unicodeEscapeSequence: false,
            });

            fs.writeFile(path.join(outputDir, fileName) + ".js", obfuscationResult.getObfuscatedCode(), { flag: "w" }, function(err) {
                if (err) {
                    throw err;
                }
            });
        });
    });
});
