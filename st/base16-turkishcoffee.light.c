

// Base16 Turkish Coffee light - simple terminal color setup
// Serkan Hosca
static const char *colorname[] = {
	/* Normal colors */
	"#0a0102", /*  0: Base 00 - Black   */
	"#9a2c38", /*  1: Base 08 - Red     */
	"#389a2c", /*  2: Base 0B - Green   */
	"#9a8e2c", /*  3: Base 0A - Yellow  */
	"#2c9a8e", /*  4: Base 0D - Blue    */
	"#8e2c9a", /*  5: Base 0E - Magenta */
	"#26867c", /*  6: Base 0C - Cyan    */
	"#c17038", /*  7: Base 05 - White   */

	/* Bright colors */
	"#6f3712", /*  8: Base 03 - Bright Black */
	"#9a2c38", /*  9: Base 08 - Red          */
	"#389a2c", /* 10: Base 0B - Green        */
	"#9a8e2c", /* 11: Base 0A - Yellow       */
	"#2c9a8e", /* 12: Base 0D - Blue         */
	"#8e2c9a", /* 13: Base 0E - Magenta      */
	"#26867c", /* 14: Base 0C - Cyan         */
	"#fdfbfa", /* 15: Base 05 - Bright White */

	/* A few more colors */

	"#2c6f9a", /* 16: Base 09 */
	"#572c9a", /* 17: Base 0F */
	"#140200", /* 18: Base 01 */
	"#4a2a15", /* 19: Base 02 */
	"#915025", /* 20: Base 04 */
	"#ecd1be", /* 21: Base 06 */

	[255] = 0,

	[256] = "#4a2a15", /* default fg: Base 02 */
	[257] = "#fdfbfa", /* default bg: Base 07 */	
};

// Foreground, background and cursor
static unsigned int defaultfg = 256;
static unsigned int defaultbg = 257;
static unsigned int defaultcs = 256;


