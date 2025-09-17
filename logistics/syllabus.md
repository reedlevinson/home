# <u>CS50</u> Syllabus

In Computer Science 50 you will learn how to design & build large, reliable, maintainable, and understandable software systems. In the process you will learn to program in C with Unix development tools.

Let's break that down. The objectives of this course are

- to be capable working at the Unix command line;
- to be capable coding in C;
- to understand pointers and memory management;
- to be capable using core Unix development tools: editors, Makefiles, gdb, and git;
- to be able to design and implement a large, complex program with a structured approach;
- to develop a strong sense of programming style and "clean" coding;
- to develop good documentation practices;
- to develop good testing practices;
- to be able to work effectively in a team.

The first few weeks of this course are a crash course in Unix and C. After that, you'll build your very own Search Engine application. Finally, you'll join a team of other students to design, build, document, and  test a large software project.

## Structure

We will be "flipping" the course this term. There will be very few
lectures. This means

- you will have [knowledge units](https://github.com/CS50DartmouthSP25/home/blob/main/knowledge) with reading and videos that are to be completed _before_ each class.

- classtime will consist of various activities based on that pre-class work that you will work on with your team. Your class attendance and participation in the activities will count for up to 20% of each of the six lab assignments (see [grading](#grading)).

All class content is available on our website. This includes videos, reading, and example code. The notes and video are meant to complement (not duplicate) each other, so you should review the notes _and_ the video.

We will have Learning Fellows (LFs) in class to facilitate active learning through peer instruction. They are critical to your success in this course because your reasoning skills will develop most effectively when you are actively engaged with this material. Research has shown that cooperative learning is
one of the best ways to achieve this engagement.

The lecturer and learning fellows will circulate about the room during the in-class activities to assist you as needed.

If you have questions about the Learning Fellow Program in general, please visit the [Dartmouth Learning Fellows site](https://sites.dartmouth.edu/learningfellows/).

## <a id="schedule">Schedule</a>

<!-- 
A `pdf` version of the schedule is available [for section 01](https://github.com/CS50DartmouthSP25/home/blob/main/logistics/Schedule-S1.pdf)).
-->
### <a id="slack">Slack</a>

From our Canvas page (on the left menu) you can join the Slack workspace for our class: [here's how](./systems.md#slack-setup). This workspace will be the primary place for engagement with one another, our TAs and LFs, and the instructor outside of class.

The teaching team will make announcements via the `#general` channel on Slack. You can use Slack channels to interact with your team, to ask questions about the assignments or course material, and to share content (and a bit of fun) related to the course. Some important points about seeking CS50 help over Slack:

- Search the `#help-...` channels on Slack to see if your question has already been asked and answered.
- Post your question on the appropriate help channel.
- Reply to others' questions using the **Thread** feature to keep questions and answers together, for easier reading and searching (hover over the message, and pick the chat bubble from the pop-up icons in the upper right).
- LFs are here to support you in-class and may have little or no time to answer questions outside class time; they’ll let you know if/when they can answer questions in Slack help channels.
- TAs are here to support you outside of class, by hosting office hours and providing feedback on your lab submissions; when they have time, they answer questions in Slack help channels.
- Every member of the instructional team works part-time, so ask your questions in the public help channels, not in DMs, because your DM may not be seen for hours or days && your classmates
won't see it and, possibly answer you more quickly.
- Exception: use DMs when your question may expose information others should not see, such as code from your lab solution or your personal business.
- Always be polite: it's easy to forget that when we're discussing things online rather than face-to-face.
- Don't use `@channel` or `@here`. This step is _rarely_ justified and usually annoys everyone.

---

## Teams

> [!IMPORTANT]
> As a reminder, you need to complete the Team Formation Tool (on Canvas) on the first day of class!

After the first day of class, you will be assigned to a 3 or 4-person team. Teams will sit together throughout the term and will also be your Final Project team. When we have activities in class you work together with your team to answer the activity questions. This way, you'll have a chance to get to know them well before the project begins!

> [!NOTE]
> If you have any concerns about your teammates or team assignment at any time, please contact Assistant Professor Kyungtae Kim privately.

---

## Assignments

All assignments will be completed on the Thayer Linux system
`bablylon1.thayer.dartmouth.edu`, with code managed and shared in [GitHub](https://github.com/CS50DartmouthFA25).

See the [Systems](https://github.com/CS50DartmouthFA25/home/blob/main/logistics/systems.md) page for detail.

### Labs

You will work individually on a series of six programming assignments ("labs"), which become more challenging through the term. All labs and the project are submitted through GitHub Classroom (see below).

### Project

You will work on a final project with your assigned team. After the project is submitted, each member of a group will submit a confidential assessment of themselves and the others in their group.

---

## <a id="grading">Grading</a>

There are no exams in this class -- instead, student assessment is based on a series of programming exercises, a team project, and weekly class engagement based on in-person class attendance, and participation in class activities.

> [!IMPORTANT]
> The in-class activities are vital to your learning the material. Each team will work together on the activity and prepare a brief summary of your results. One member will then submit that summary to Canvas for that day. The summary counts as a "checkmark" towards your participation grade.

We have 6 lab assignments, covering 4 to 6 class sessions. Your attendance and
activity participation will contribute 15% and 5%, respectively, towards your grade for the next lab.  

> [!IMPORTANT]
> This means you could have perfect score on a lab, but without the 20%
> for attendance and activity participation your maximum grade would be 80%.

| Component                           |  Percentage | Notes |
|:----------------------------------- |  ----------:|:----------------------|
| Lab 1 (bash)                        |         10% | individual grade, includes AP  |
| Labs 2-3 (C)                        |         15% | individual grades, each includes AP |
| Labs 4-6 (Tiny Search Engine - TSE) |         45% | individual grades, each includes AP |
| Final project team grade            |         30% | team grade, but with individual AP points |

where "AP" is your score for Attendance and Participation for the class sessions prior to that lab's due date.

**_Lab grades_** are based on whether your submission meets the requirements for that lab, and the following:

- being submitted on time,
- daily class attendance, and
- daily class attendance and participation since the previous lab.

See the [late assignment](#late) policies below.

The graders test your lab submissions on the CS50 setup on the `plank.thayer.dartmouth.edu` system. If it doesn't run correctly there, it doesn't matter whether it runs on your Mac/Windows/Linux laptop. We don't have access to your laptop for grading.

The **_final project_** is a team grade -- every team member gets the same base grade -- **but** I will subtract points from the Project grade for members who contribute substantially less than their teammates or miss class sessions. At the end of the course there is a mechanism for peer evaluation to address variance in members' contribution.

### Homework grading/regrading

Your work is graded according to a rubric that I discuss with the graders. If you have any grading questions on a homework or quiz, follow the procedure below.

1. If the grader made an obvious mistake (e.g., totaling error), contact the grader and we'll make the correction right away.

2. If you feel the grader did not grade your answer accurately, then you should send a Slack DM to both the grader and one of the graduate TAs to explain which program(s) need regrading and why. We will arrange for the whole assignment to be reviewed again.

3. After you hear the outcome on your regrade request, if you still feel the matter is not resolved satisfactorily, then you should immediately DM the class instructor.

> [!WARNING]
> You must submit your regrade request _within one week_ from when the lab grade was released on Canvas. Please note that any regrade request that comes after the deadline stated above will not be considered, regardless of merit.

### Programs that crash

Your lab solutions are graded on _correctness_, _style_, _design_, and _documentation_. Each lab requires you to document your own tests and test results; the graders  will also compile and run your program with their own test cases. If your program crashes when the graders run a particular test, your program will be marked as incorrect for that test. If your program does not compile, you will lose all correctness points. The best way to avoid that situation is to ensure that your program compiles with  no errors or warnings and doesn't crash on the `plank.thayer.dartmouth.edu` system in the first place.

Learning how to follow a specification to create, debug, and test your programs is a key part of this course.

### Lab assignment extensions

We have all had to learn to deal with the unexpected the last few years. So to address those situations, you will have two (2) 24-hour extensions that can be used for any of the six labs (not for the team project). An extension can only be used as a full 24 hours - extensions are not divisible. 

> [!TIP]
> The labs get progressively more difficult as the term proceeds, so use your two extensions wisely.

To use an extension, place the following (including the back-tics) at the top of your top-level `README.md` when you submit your completed assignment:

````markdown
```
******************
* EXTENSION USED *
****************** 
```
````

> [!NOTE]
> Only one extension may be used on a specific lab assignment.

### Late assignments

This is a challenging course, so self-discipline and planning will be key to your success. In short, _Start Early_! Remember, all due dates and times are posted on the Canvas calendar.

Late lab assignments will be penalized 10 points for each 24-hour period they are late, up to 72 hours (taking any extension into account). For example, if a Lab is due at 2200 (10PM) EDT on the 12th and it is turned in at 1AM EDT on the 13th, the highest possible score for that lab will be reduced by 10 points.

> [!IMPORTANT]
> No assignments will be accepted more than 72 hours after the original deadline and the grade for that assignment will be zero. There are no exceptions to this policy other than in _extraordinary_ cases.

### Final grade rubric (undergraduates)

| &ge; | &lt; | Grade |
|--:|--:|:--:|
| 95 | 100+ | A |
| 90 | 95 | A- |
| 87 | 90 | B+ |
| 84 | 87 | B |
| 80 | 84 | B- |
| 77 | 80 | C+ |
| 74 | 77 | C |
| 70 | 74 | C- |
| 55 | 70 | D |
|  0 | 55 | E |

### Final grade rubric (graduate students)

| &ge; | &lt; | Grade |
|--:|--:|:--:|
| 90 | 100+ | HP |
| 73 | 90 | P |
| 0 | 73 | LP |

---

## Student responsibilities

- Attend class
- Engage in course activities in class and on Slack.
- Read/watch the knowledge units, and skim the suggested reading.
- Pay attention to Slack for all announcements and discussions.
- Code the Labs and the Project and submit them on time.
- Engage fully with your final project team.
- Strive to produce well-designed, well-documented, correct, well-tested, well-styled code.

### Academic Honor Principle

The [Academic Honor Principle](https://students.dartmouth.edu/judicial-affairs/policy/academic-honor-principle) applies to this course, as it does to all Dartmouth courses. In particular, you are expected to produce all written material yourself, and to explicitly acknowledge anyone (including other students enrolled in the class) from whom you receive assistance. If you use _any_ online reference for code, including any AI system (e.g., ChatGPT, etc.) or a source like `stackoverflow.com`, you must acknowledge them as well.

Furthermore, as with any Dartmouth activity, you are expected to abide by [Dartmouth’s Standards of Conduct](https://student-affairs.dartmouth.edu/policy/standards-conduct). The integrity of the Dartmouth community depends upon students’ acceptance of individual responsibility and respect for the rights of others.

You may discuss and help each other (help in debugging, sharing knowledge, giving moral support, getting coffee, etc.). This support is the type of team spirit and joint problem-solving skills that are the essence of the course and necessary to do a great project.

However, you cannot work jointly on coding (i.e., writing) your individual programming assignments. This means _all_ of the lab assignments, except for the project, are to be solely your own work. You can talk, discuss solutions, even draw snippets of code on the white board (not the computer) to solve a problem but you cannot jointly work on the code development and writing. _Submitted code for the labs has to be yours and yours alone._

The project phase is different. You will work jointly with your project team on writing code and documentation. But you cannot take code from anywhere (e.g., the web or any other source). It has to be the joint product of the team. No sharing of code between teams. As above, teams can discuss coding challenges, but not show or share code with other teams.

In either case, you should not read or incorporate solutions for assignments found on the Web (including websites for previous terms, inside or outside of Dartmouth).

---

#### Generative AI usage policy

Utilizing ChatGPT, GitHub CoPilot, or other AI tools is becoming more common. While I would prefer you not use these tools and instead commit to the productive struggle that is learning, I recognize that these tools are not going away.

For COSC 050, we expect you to treat ChatGPT, CoPilot, and all the rest, as you would a fellow student. You wouldn’t ask a fellow student to write your code or do your homework. You might ask them how something works or to explain an error message, but anything beyond that would be plagiarism and a violation of the Honor Code.  

You should realize that the use of these tools in companies is extremely limited or outright banned. Some of the reasons for this are:

- the resulting software, whether a full program or a snippet, is derived from collections of code that were used to train the AI. All software has a license governing its use. When an AI gives you a bit of code, do you have the legal right to reuse it or sell it? Since current AI's cannot identify which pieces of training code contributed to the answer, the license status ot that result cannot be reliably known. Thus, corporate legal departments just say "No."
- clearly specifying precisely what you want the AI to produce is quite challenging.
- being able to explain and defend the results to me can be very tricky if you didn't produce it yourself.
- the resulting software often has bugs and security problems, so the extra effort to test the code (that you didn't write and may not understand) can become quite onerous.  
- when AI-generated code is used, it will need to be maintained like human-written software. Given that no person "wrote it", it may be difficult to understand, document, and maintain that software. This is similar to the legacy code problem many industries are facing because the people who wrote that software have retired and the new hires don't know the programming languages that were used.

> [!NOTE]
> While generative AI systems like ChatGPT, Gemini, CoPilot, and all the others, have their uses, consider this: if you use them to do your homework instead of learning the material yourself, how will that differentiate you from all the others out there? How will ChatGPT skills alone help you compete?

---

#### Specific GitHub warning

> "Old software never dies; you have to kill it."
> -- Grady Booch

We will also be learning how to do software development with a team using the `git` versioning system. We will use git with [GitHub](https://github.com), which is an open repository of projects (including source code) from programmers around the world. Some past students of CS50 uploaded their assignment or project solutions to GitHub for reference by potential employers. While this is may be a good idea for their job search, it is disruptive, distracting, and misleading for you and future students.

Keep in mind:

- Anyone can upload code to GitHub. That doesn't mean it's good code, working code, or even code that will compile and run. It could even be malware!
- Lab assignments are _slightly_ different from term to term. so if you copy an old one, it will be obvious.
- Solutions you discover online will likely not match the current assignment.
- If you need to upload your work for reference by potential employers, GitHub offers **free private repositories**
- to students which have an associated secret URL that you may privately share.
- Any student found to have uploaded any CS50 assignment solutions, including TSE and the final project, to a publicly available GitHub repository, or to a private GitHub repository while sharing its access credentials with other Dartmouth students, will be reported.
- Anyone caught using the work of prior CS50 students, whether from GitHub or other sources, will be reported.

We can assure you that violations of the Honor Code have been, and will continue to be, treated **seriously**.

We agree with Professor Cormen, who wrote:

> I reserve the right to assign you a failing grade on an entire homework assignment or on an entire exam if I believe that you have violated the Academic Honor Principle, apart from any finding by the COS.
> 
> I will give you every opportunity to convince me that you did not violate the Academic Honor Principle, but I take the Academic Honor Principle very seriously. You have read Sources and Citation at Dartmouth College.
>I was co-chair of the committee that wrote this document. In fact, I wrote the first draft. So I know exactly what it says. Cheaters---whether or not they are caught---bring dishonor upon themselves and upon everyone else at Dartmouth. 
> 
> To do that, for just a few lousy points in a course, is [insert your favorite strong adjective meaning "stupid" here]. You cannot fool me into thinking that you did not cheat if, in fact you did.
> 
> So don't cheat.

Please let me know if you have any questions -- better to be safe than sorry!

### Credit your sources

Any ideas you get from other teams or any other source should be carefully cited both in the code and in the documentation.

- In your assignments, list all your collaborators (e.g., "I discussed this homework with Alice and Bob") and credit any sources (including code from _any source_) used.
- You must also credit specific sources that are provided by the instructor. For example, you must credit code that we give you if it helps you with your work (either by direct use of the code, or by simply enhancing your understanding by reading the code).
- References for any non-trivial algorithms you employ should be included in the code and documentation to ensure others will know where to learn more about it.

Copying code from StackOverflow or other online sources is strictly forbidden and easy to check. The code you submit must be your own.

For more general information, see [Dartmouth's guidelines for proper citation of sources](http://writing-speech.dartmouth.edu/learning/materials/sources-and-citations-dartmouth), particularly the section on [Computer programming assignments](http://writing-speech.dartmouth.edu/learning/materials/sources-and-citations-dartmouth#computerprogramming).

---

## You and the Class Environment

### Wellness

The following is standard text provided by Dartmouth [here](https://dcal.dartmouth.edu/resources/course-design-preparation/syllabus-guide).

The academic environment at Dartmouth is challenging, our terms are intensive, and classes are not the only demanding part of your life.
There are a number of resources available to you on campus to support your wellness, including your [undergraduate dean](https://students.dartmouth.edu/undergraduate-deans/), [Counseling and Human Development](https://students.dartmouth.edu/health-service/counseling/about), and the [Student Wellness Center](https://students.dartmouth.edu/wellness-center/). I encourage you to use these resources to take care of yourself throughout the term, and to come speak to me if you experience any difficulties.

### Accessibility

The following is standard text provided by Dartmouth [here](https://dcal.dartmouth.edu/resources/course-design-preparation/syllabus-guide).

Students requesting disability-related accommodations and services for this course are encouraged to schedule a Zoom meeting with me as early in the term as possible. This conversation will help to establish what supports are built into my course. In order for accommodations to be authorized, students are required to consult with Student Accessibility Services (SAS: [webpage](https://students.dartmouth.edu/student-accessibility/students/working-sas/getting-started), [email](mailto:student.accessibility.services@dartmouth.edu), or phone +1-603-646-9900) and to request an accommodation email be sent to me. We will then work together with SAS if accommodations need to be modified based on the learning environment.

If students have questions about whether they are eligible for accommodations, they should contact the SAS office. All inquiries and discussions will remain confidential.

If you encounter financial challenges related to this class, please let me know.

### Respect, Diversity, and Inclusion

I aim to create a productive learning environment for all, one that supports a diversity of thoughts, perspectives and experiences, and honors everyone's identities (race, gender, class, sexuality, religion, ability, etc.)

To help accomplish this goal:

- I ask that we all contribute to the course conversation in a professional manner. Specifically, I encourage you to challenge _ideas_, but always to _respect the speaker (or author)_. Indeed, it is particularly important that we respect the diversity of our course community, including students on the teaching team, drawing strength from the diversity of
backgrounds and perspectives they all bring to the conversation.

- If you have a preferred name and/or pronouns that differ from those that appear in your official college records, please let me know.

- If you feel like your performance in the class is being impacted by your experiences outside of class, or if you encounter financial challenges related to this class, please don’t hesitate to talk with me.

- Remember that you can also submit anonymous feedback (which may lead to me making a general announcement to the class, if necessary to address your concerns).

- If you prefer to speak with someone outside of the course, your
[Dean](https://students.dartmouth.edu/undergraduate-deans/about/about-us) can be an excellent resource.

- If at any time you feel uncomfortable about the interactions in our course, I encourage you to contact me privately so I can better understand how I can manage the course. (Again, anonymous feedback is always an option.)

### Title IX

The following is standard text provided by Dartmouth [here](https://dcal.dartmouth.edu/resources/course-design-preparation/syllabus-guide).

At Dartmouth, we value integrity, responsibility, and respect for the rights and interests of others, all central to our Principles of Community. We are dedicated to establishing and maintaining a safe and inclusive campus where all have equal
access to the educational and employment opportunities Dartmouth offers. We strive to promote an environment of sexual respect, safety, and well-being. In its policies and standards, Dartmouth demonstrates unequivocally that sexual assault, gender-based harassment, domestic violence, dating violence, and stalking are not tolerated in our community.

The [Sexual Respect Website](https://sexual-respect.dartmouth.edu) at Dartmouth provides a wealth of information
on your rights with regard to sexual respect and resources that are available to all in our community.

Please note that, as a faculty member, I am obligated to share disclosures regarding conduct under Title IX with Dartmouth's Title IX Coordinator. Confidential resources are also available, and include licensed medical or counseling professionals (e.g., a licensed psychologist), staff members of organizations recognized as rape crisis centers under state law (such as WISE), and ordained clergy; see [resources](https://dartgo.org/titleix_resources).

Should you have any questions, please feel free to contact Dartmouth's Title IX Coordinator or the Deputy Title IX Coordinator for the Guarini School. Their contact information can be found on the sexual respect [website](https://sexual-respect.dartmouth.edu).

### Religious observations

Some students may wish to take part in religious observances that occur during this academic term. If you have a religious observance that conflicts with your participation in the course, please meet with me before the end of the second week of the term to discuss appropriate accommodations. [Dartmouth provides a page](https://students.dartmouth.edu/tucker/spiritual-life/about-spiritual-life/holy-day-calendar) with month-by-month listings of religious observances in 2024 and 2025. The list represents holy days which may impact campus events in general, as well as student course attendance, exams, commencement, and participation in activities.

### Inclement weather

On rare occasions, Dartmouth may cancel classes or even close the campus. If this occurs, general notice will be given in three ways:

- Message via Slack;
- Local broadcast media;
- Campus-wide BlitzMail messages; and
- A recorded message at a College toll-free Inclement Weather Phone Line: 1-888-566-SNOW (1-888-566-7669).

### Consent to record

The following is standard text provided by Dartmouth [here](https://dcal.dartmouth.edu/resources/course-design-preparation/syllabus-guide).

1. **Consent to recording of course and group office hours.**
By enrolling in this course,

  a. I affirm my understanding that the instructor may record this course and any associated group meetings involving students and the instructor, including but not limited to scheduled and ad hoc office hours and other consultations, within any digital platform, including those used to offer remote instruction for this course.

  b. I further affirm that the instructor owns the copyright to their instructional materials, of which these recordings constitute a part, and my distribution of any of these recordings in whole or in part to any person or entity other than other members of the class without prior written consent of the instructor may be subject to discipline by Dartmouth up to and including separation from Dartmouth.

1. **Requirement of consent to one-on-one recordings.**
By enrolling in this course, I hereby affirm that I will not make a recording in any medium of any one-on-one meeting with the instructor or another member of the class or group of members of the class without obtaining the prior written consent of all those participating, and I understand that if I violate this prohibition, I will be subject to discipline by Dartmouth up to and including separation from Dartmouth, as well as any other civil or criminal penalties under applicable law. I understand that an exception to this consent applies to accommodations approved by SAS for a student’s disability, and that one or more students in a class may record class lectures, discussions, lab sessions, and review sessions and take pictures of essential information, and/or be provided class notes for personal study use only.

---

## Credits

The materials used in this course are derived from those designed by Professors Balkcom, Campbell, Kotz, Palmer, Zhou, and others.
