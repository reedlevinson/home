# Activity 18 - Use the Fuzz, Luke!

note: QAengineer is a Quality Assurance Engineer (tester)

A QA engineer walks into a bar. 

- Orders a beer.  
- Orders 0 beers. 
- Orders 999999999999 beers. 
- Orders a bear. 
- Orders -1 beers. 
- Pide una cerveza.
- Orders a pbfqrzxx. 
- Orders a beer and tries to leave without paying

***Testing Complete!***

First real customer walks in and asks where the  bathroom is.  The bar bursts into flames.

>-- adapted from @brenankeller



---

Put your team's answers in a Markdown file and upload it to Canvas for Activity 18.

---

## Fuzz Testing

1. For the given example applications, discuss ...

  - would fuzz testing be useful?
  - what would fuzzed inputs look like?
  - how would you automate the generation of those fuzzed inputs?
  - how would you automatically verify correctness?

      a. `histo` from Lab-2

      b. `bag.c` from Lab-3
      
      c. a simple `+,-,*,=` calculator program , and assume you know the 
      specifics of the hardware such as largest integer, largest float, etc.

2. Can you fuzz-test an app that you use across a network:
		a. *the login program*
		b. *a web server*
        c. *a web application*

3. Can you fuzz test things other than with specific, predictable inputs?
		a. *the operating temperature of a system; is the system affected as the ambient the temperature fluctuates?*
		b. *combinations of weather on a on a surveillance drone?*

	 Would such testing be repeatable? Does that matter?

4. Are there programs that cannot be meaningfully fuzz-tested? 
		a. *If there are none, why not?*
		b. *If there are some programs like that, why would fuzz-tests not be helpful?*

## General Testing Challenge Question

Most satellites can't be repaired after launch. They are subjected to extreme
levels of testing prior to their launch, but exhaustive testing just isn't possible.
For example, here's how the Wall Street Journal described the mission:

> The James Webb Telescope was one of the most complex missions NASA had ever attempted ... This is a system with 344 single point failures. If any one of these single points fail, the whole mission fails.

The final software testing 

> "...was staffed 24 hours a day, for 15 days consecutively, and approximately 1,070 scripts or sequences of instructions were executed, and nearly 1,370 procedural steps were performed."[^1] 

Wow! How would you like to be the testing director of _that_ project?

Think about the challenges testing this system of systems required. The varying 
temperatures, the lack of gravity, and the vacuum, combined with random hits from 
micrometeorites, solar radiation, and cosmic rays. 

How would you begin building a test plan?

[^1]: https://www.nasa.gov/universe/nasas-james-webb-space-telescope-completes-comprehensive-systems-test/ NASA did.

