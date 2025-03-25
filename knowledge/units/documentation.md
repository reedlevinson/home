
How do we ensure that another person, or even ourselves sometime in the
future, can understand how our code works and appreciate how cool it is?
Furthermore, what steps can we take to make it easier for our code to be
reused?

------------------------------------------------------------------------

> *Primum non nocere* (first, do no harm) – origin uncertain

------------------------------------------------------------------------

All of the things we use to provide others with insights into our
programs are referred to as *the documentation.*

What's the goal of documentation?

> *Communication! With other humans!*

Communication amongst development team members, a guide for the test
team, a trail of artifacts for the maintenance team, and road maps for
the system administrator and/or end-user.

> *Communication with users / customers!*

When you share your software with the world, especially if it's open source, you want people to use it! If they can't figure out how to use all the way-cool features of your software, they will use something else. 



> *The Value of Documentation* -- Martin Fowler
> 
> If documentation wasn't important, why would the World Wide Web exist? Why would Google? Why not just rely on raw source code to understand any given system? Why would I bother writing this article after providing the proof-of-concept unit tests?
>
> Good documentation makes it easier for people to understand your system, product, or ideas in a larger context, and answers most questions before they're ever asked. It communicates a high standard of quality and builds trust.

## Documentation generally has two flavors:

- Development
everything needed to get it built, including business case, development
plan, schedules, team composition (staffing), and full life-cycle plan.
Most of it is only relevant during development

- Product
This is the collection of detailed documentation that describes the
product being developed and, in particular, describes the specific
product being delivered to a particular end-user set (e.g., academia vs.
industry, country, license level, etc.)

The customer is involved to some degree with both sets of documentation,
and some parts of the documentation may change during the development
effort.

[Sommerville](http://www.cs.ucf.edu/~turgut/COURSES/EEL6883_SEII_Spr07/PaperPresentations/Sommerville-p143.ppt‎)
further classifies the product documentation as having two main
categories:

- System documentation  
Describes what it is, how it's put together and why, how it works, how
it is tested, how it has/will evolve, and any known limitations or bugs.

- Product documentation  
Two kinds, one for the System administrator who has to install/maintain
the product, and another for the end users. These are VERY different
documents with distinct goals and written in different styles. In
addition, the *means* of delivery of this document may be very important
(e.g., man page, web page, iBook, DVD, paper, etc.).

## It's a tough job

Computer nerds and engineers may find it difficult to
write clear and effective end-user documentation. That's why there are Technical
Writer jobs in the industry! Being subject to coding standards and
documentation requirements is one of the toughest adjustments graduates
have to make when entering the software development field.

There's three ways of delivering documentation:

- external documentation, like design documents, README's, man pages,
  help screens, users' guides and web pages.

- internal documentation, like effective, concise, and clear comments
  and well-chosen symbol names inside the files used to produce the
  program. Yes, internal documentation includes variable names, function
  names, and even data structure and data type names in addition to
  comments.

- runtime documentation, like command-line helps

It's all about aiding understanding. By the time we're at university or
working in industry, we've become quite skilled at explaining what we
want to do to a compiler or operating system. It turns out to be a lot
tougher to explain the same stuff to another randomly-selected human.

The manner in which you provide documentation may also vary according to
your implementation language or platform. For programs on Unix systems,
you will often encounter man pages, HTML, or even flat text like
README's. For Java programs, you might encounter a requirement of using
the `javadoc` tool which extracts specially marked text from source files
to construct simple documentation. Python programs can use doc-strings for function-level information, while Sphinx is widely used for formal documentation for Python systems. Similarly, rust programs have a 
tool `rustdoc` that produces documentation from the rust source code files.

For building large Application
Program Interfaces (API) libraries, tools like [Doxygen](https://www.doxygen.nl/) are really hard to beat.

With all of these, the documentation is usually brief and to the point, but
typically on the technical side.

In some environments, such as corporations or governments, there may be
extraordinarily detailed and specific documentation requirements due to
corporate guidelines or regulatory requirements. Those environments tend
to produce documentation wizards whose job it is to make sure all the
rules are followed. For example, the [IEEE Standard
1063](http://www.ehow.com/facts_7695664_ieee-standards-user-documentation.html)
is a standard for software user documentation (the actual standard is
available for purchase). Increasingly these places also have tools to
help you meet their requirements, so it may not be as bad as it sounds.

It is important to understand your audience. If you're building a
library of code for interfacing with a new in-flight navigational system
for the new passenger jet, you may think differently about the
documentation style and content than if you were writing the user's
guide for a new iPhone application. The level of detail, even the kinds
of details, in the documentation should match its audience.

Lets look at different kinds of documentation.

## External documentation

------------------------------------------------------------------------

> If you could kill the user by dropping the documentation on him, he
> probably wouldn't have read it anyway.  
> – Matthias Kaiserswerth, IBM

------------------------------------------------------------------------

In other situations, such as high assurance evaluations of software or
hardware, the documentation requirements may be colossal! To achieve
even the lower levels of assurance from the government-designated
testing labs, the amount of documentation can easily outweigh the lead
programmer, and maybe the manager too! For the higher levels, you may
even have to supply mathematical proofs that your code matches the
documented design. For example, take a look at Appendix A and B of the
[FIPS PUB 140-2 Security Requirements for Cryptographic
Modules](http://csrc.nist.gov/publications/fips/fips140-2/fips1402.pdf).  

(NOTE: DISCUSS APPENDIX B (page 53) IN PARTICULAR!)  

In these cases, the mass of the documentation is required in order to
allow a third-party lab to fully understand everything about the product
without having been involved with its development.

Your documentation experience may vary depending on
where you are working, who your customers are, the target environment,
the programming language choice, the importance of reuse, and your
status on the project. For any of these situations, the best way to keep
your documentation on track is understand what's expected and to do the documentation as you go.

Most programmers just don't like to do documentation. This is a little
odd, since most professional programmers have spent some time working
with other people's code, whether from a textbook or course, a piece of
open source software like Linux, or a section of corporate legacy code.
Having had experience with code from a variety of sources, some
highly-qualified professionals and others from well-intentioned novices,
one might expect professionals to try harder to document their work.

This reluctance to document is worsened when the documentation is
separate from the code, as in a separate file. This will almost
guarantee that the two descriptions of the software(the code that does
it and the comments that explain the code), will soon become out of sync
with each other. The code always wins, but if the purpose of
documentation is understanding, the two need to be consistent. We'll see
some tools that can help a little later.

If you have documentation outside of the source code, include it in your
source code management system (e.g., git, svn).  This is another reason for the popularity of human-readable markup languages like Markdown and RestructuredText which are easily managed using `git`.

## Internal documentation 

------------------------------------------------------------------------

> "Comment in full sentences in order to summarize and communicate
> intent. ... The most reliable document of software is the code itself.
> In many cases, the code is the only documentation. Therefore, strive
> to make your code self-documenting, and where you can't, add
> comments."  
> -- Daniel Read's *The Principle of Self-Documenting Code*

------------------------------------------------------------------------

Comments shouldn't insult the reader's intelligence or waste his/her
time. Including all the revision history of the file, or
other files this one depends on, or even all the functions the file
defines are examples of information that can be obtained using
external tools. Plus, using those tools has an added advantage: *they
will be correct!* These kinds of comments are the kind that
are likely to become out of date with respect to the code. However,
many development teams have these kinds of requirements either by
tradition or to meet desired standard.

***Comments should enlighten***  


A tip from the [Pragmatic Programmer](http://pragprog.com/the-pragmatic-programmer/extracts/tips) :

> In general, comments should discuss why something is done, its purpose
> and its goal. The code already shows how it is done, so commenting on
> this is redundant.  

This is where you can explain why you did the
things you did, where you got those ideas/techniques/algorithms, and how
you did them. This is NOT where you re-explain the obvious:</span>

Here is another common goof. If you are defining constants that have meaning with specific units, include those units in the constant's name.

```c
    #ifdef GOOFY
    /* DO NOT do this */

    /* Planck's constant */
    c=6.62606957e−27 ;

    /* or this */

    /* Planck's constant */
    #define h 6.62606957e−27

    #else /* not GOOFY */

    /* Planck's constant in ergs.s */
    const double h = 6.62606957e−27 ;  /* if you're a physicist */

    /* -- OR -- */

    const double Plancks_Constant_h_ergs_s = 6.62606957e−27 ;

    #endif  /* not GOOFY */
```

***A key to understanding is consistent style***

There are several style guides and coding standards to choose from,
including the one that your organization might have. Here are some
popular ones:

- [Linux kernel style
  guide](https://www.kernel.org/doc/Documentation/process/coding-style.rst)
- [Google C/C++ Style
  ￼Guide](https://google.github.io/styleguide/cppguide.html)

More from the [Pragmatic Programmer](http://pragprog.com/the-pragmatic-programmer/extracts/tips) :

> ***Make It Easy to Reuse***  
> If you make it easy for others to reuse, they will.  
> Create an environment that supports reuse.  

The more you can describe what your software does, 
how it accomplishes it, and 
any assumptions you made while writing it, the more likely another
programmer will understand it well enough to consider reusing it.
Documenting the algorithms used (even including a bibliographic
reference!), the parameter ranges, and the environment in which it
is likely to work correctly are all key ingredients for effective reuse.
Your company will be happy with you if you can save them expensive programmer time!

------------------------------------------------------------------------

> It pays to be obvious, especially if you have a reputation for
> subtlety.  
> -- Isaac Asimov

------------------------------------------------------------------------

Being able to produce "write-only" code may be entertaining, but don't
think for a moment that it represents long-term job security! The first
time you're unavailable to help with a problem and your company realizes
that the "[Bus Factor](http://en.wikipedia.org/wiki/Bus_factor)" for
your project is `1` because of the way you write code, you may be in for
a surprise.

For example, this is a bad idea (can you guess what it does?) :

```c
#include <stdio.h>
main(_){_^448&&main(-~_);putchar(--_%64?32|-~7[__TIME__-_/8%8]
[">'txiZ^(~z?"-48]>>";;;====~$::199"[_*2&8|_/64]/(_&2?1:8)%8&1:10);}
```

For more bad examples like that, visit the [International Obfuscated C
Code Contest website.](http://www.ioccc.org)

Here is the famous line 2238 of Unix V6 which is part of some of the most delicate parts of the kernel, context switching.

This comment by Dennis Ritchie has received huge publicity and may be the the most famous source code comment in computing history.

```c
2230	/*
2231	 * If the new process paused because it was
2232	 * swapped out, set the stack level to the last call
3333	 * to savu(u_ssav).  This means that the return
2235	 * actually returns from the last routine which did
2236	 * the savu.
2237	 *
2238	 * You are not expected to understand this.
2239	 */
2240	if(rp->p_flag&SSWAP) {
2241		rp->p_flag =& ~SSWAP;
2242		aretu(u.u_ssav);
2243	}
```
Ref: Unix Sixth Edition Kernel Source Code, © Western Electric Company

------------------------------------------------------------------------

[Pragmatic Programmer
Tip](http://pragprog.com/the-pragmatic-programmer/extracts/tips) :

> ***Keep Knowledge in Plain Text***  
> Plain text won’t become obsolete.  
> It helps leverage your work  
> and simplifies debugging and testing.

HTML can be used to produce fancy documentation
for any standalone project written in C. For small tool-like
programs, the lowly `README` may even suffice, depending upon your customer.

[Pragmatic Programmer Tip](http://pragprog.com/the-pragmatic-programmer/extracts/tips) :

> ***Build Documentation In, Don’t Bolt It On***  
> Documentation created separately from code is less likely to be  
> correct and up to date.

## Automation
Tools for extracting documentation directly from
annotated source code are very popular. There's JavaDoc for Java, and
tools like [Doxygen](http://www.doxygen.org) and Sphinx for C, Python, and more. These tools are driven by keywords or special
character sequences contained in the comments in your code (similar to
`javadoc` and `rustdoc`).

For some projects, like libraries with a large public API (Application
Programming Interface), e.g., gtk or OpenGL, HTML is still a good
choice, since it allows you to link to data types and function
prototypes, and functional descriptions easily. However, developing
these HTML pages can be extremely tedious, so go get a tool like
[Doxygen](http://www.doxygen.org). Here's an example of Doxygen markup
of a header file.

```c
    /*! \file structcmd.h
        \brief A Documented file.
        
        Details.
    */
    /*! \def MAX(a,b)
        \brief A macro that returns the maximum of \a a and \a b.
       
        Details.
    */
    /*! \var typedef unsigned int UINT32
        \brief A type definition for a .
        
        Details.
    */
    /*! \var int errno
        \brief Contains the last error code.
        \warning Not thread safe!
    */
    /*! \fn int open(const char *pathname,int flags)
        \brief Opens a file descriptor.
        \param pathname The name of the descriptor.
        \param flags Opening flags.
    */
    /*! \fn int close(int fd)
        \brief Closes the file descriptor \a fd.
        \param fd The descriptor to close.
    */
    /*! \fn size_t write(int fd,const char *buf, size_t count)
        \brief Writes \a count bytes from \a buf to the filedescriptor \a fd.
        \param fd The descriptor to write to.
        \param buf The data buffer to write.
        \param count The number of bytes to write.
    */
    /*! \fn int read(int fd,char *buf,size_t count)
        \brief Read bytes from a file descriptor.
        \param fd The descriptor to read from.
        \param buf The buffer to read into.
        \param count The number of bytes to read.
    */
    #define MAX(a,b) (((a)>(b))?(a):(b))
    typedef unsigned int UINT32;
    int errno;
    int open(const char *,int);
    int close(int);
    size_t write(int,const char *, size_t);
    int read(int,char *,size_t);
```

Here is the
[HTML](./media/Doxygendemo/html/index.html)
that is generated by the above, and here is a [latex pdf](./media/Doxygendemo/latex.pdf).

Here's another recent example of the results of using Doxygen to
document a library: [HELib](./media/refman.pdf).

> ***Learn and use your tools***  

Don't do repetitive things yourself, use your tools! If your company has
specific requirements for comments and copyright statements and such at
the top of a file (like the Google standard), let your editor do that
for you. Development environments like Eclipse and XCode provide this
capability, but you could accomplish much of the same with some shell
scripts/editor programs.

## Runtime documentation

This is the `--help` or `-h` or `-?` kinds of documentation which writes
brief information to `stdout` on how to run the program and then exits.
Many of the previous comments apply here as well, and there are even
[GNU guidelines for command line
interfaces](http://www.gnu.org/prep/standards/html_node/Command_002dLine-Interfaces.html).

This is also the runtime error messages that can appear during the use
of the software. The error messages should be informative and include
sufficient detail to ensure the user will understand what went wrong.
Messages like "*Extraneous brouhaha in line 12*" is not enlightening.

There are some kinds of errors that could only occur as the result of
some nasty internal inconsistency that should never happen. These
may be considered programmer errors and should occur  when things have gone terribly wrong, without the assistance of
the user. These kinds of failures may be handled with asserts (see
`assert.h`). If you use these, their messages to the user (and,
preferably, to a write-only log file or device) need to be
extraordinarily clear.  Once the code is debugged, the asserts may be disabled via a compiler option.

***NOTE: NEVER release or submit code with live asserts! ***

## Special topic: Literate Programming

------------------------------------------------------------------------

> ***You're talking to another human***  
> "The main idea is to regard a program as a communication to human
> beings rather than as a set of instructions to a computer."  
> -- Donald Knuth

------------------------------------------------------------------------

The ultimate approach to explaining the "how and why" of programs is
Donald Knuth's [Literate programming](www.literateprogramming.com).
Wikipedia has an
[article](http://en.wikipedia.org/wiki/Literate*programming) on it as
well. For a gentle introduction to this written by Tim Daly, go
[here](./media/LiterateProgramming/litprog.html). It's quite an intriguing idea, but it hasn't really been
adopted other than by specialists and some languages
([Haskell](http://www.haskell.org/haskellwiki/Literate*programming)).

------------------------------------------------------------------------

