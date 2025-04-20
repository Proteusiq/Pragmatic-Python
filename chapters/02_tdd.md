#### TDD Done Pragmatically

```{note} 
# 🐺 Episode II - Attack of the Clones

The problem with test-driven development is that it focuses attention on getting specific features working, rather than finding the best design. This is tactical programming pure and simple, with all of its disadvantages. Test-driven development is too incremental: at any point in time, it’s tempting to just hack in the next feature to make the next test pass. There’s no obvious time to do design, so it’s easy to end up with a mess

— A Philosophy of Software Design by John K. Ousterhout
```

##### 1.1: User Stories as the North Star

Ousterhout’s critique stings like a cold Danish wind: TDD can feel like a hamster wheel—write a test, make it pass, repeat. It’s tempting to hack in just enough code to flip the test green, like slapping together smørrebrød for a hungry tourist. This *tactical programming* risks a codebase that’s functional but fragile—a Jenga tower of features ready to collapse. Without a clear moment to step back and design, we’re not building software; we’re assembling *joker code*, chaotic and unmaintainable.

Fair jab. Ousterhout has a point, _but_, yes, there is always a _but_, TDD is much more than green checks. TDD, done pragmatically, isn’t about piling up unit tests—it’s about crafting a system that solves the *core problem* through user defined and agreed stories. Say hello to  *User Story Driven Development* (USDD), where tests serve the user’s stories needs, and not so much the inner implementation needs.

###### The Tactical TDD Thor's Hammer Trap

In Chapter 1, I built a case for *pragmatic structure*—structure that’s ETC, testable, easy to onboard, and rooted in SOLID principles. Test-Driven Development (TDD) with a pragmatic twist steers clear of the tactical traps Ousterhout hammered. Yes, unpragmatic TDD focus on passing tests that can lead to incremental hacks, leaving design in the dust and your codebase a toilet mess. _`Men vi må ikke smide barnet ud med badevandet`_. TDD, done pragmatically, isn’t about piling up unit tests—it’s about crafting a system that solves the *core problem* through user defined and agreed stories. Say hello to *User Story Driven Development* (USDD), where tests serve to meet the user’stories requirements.

The problem isn’t TDD—it’s how it’s often done. Skip the *refactor* step or treat tests as checkboxes, and you’re not practicing TDD; you’re betraying the pragmatic structure we championed in Chapter 1. Ousterhout assumes TDD ignores design, but he overlooks refactoring, where you polish your code, align with SOLID, and keep things cohesive. It’s not TDD’s fault if you rush past that step.

###### User Stories: The Heart of Pragmatic TDD

To make TDD truly pragmatic, we shift the focus from *unit tests* to *user stories*. Unit tests are fleeting—they mirror your code’s inner workings, which change as you refactor or swap implementations. User stories, `derimod`(on-contrary), are rock-solid. They capture the *why* of your system: what the user needs, the problem you’re solving. By anchoring TDD in user stories, you write tests that validate *functionality*, not just code. This is *User Story Driven Development* (USDD).

In USDD, your tests reflect the user’s journey. Forget tests for every class or method—write tests that map to user goals: “As a customer, I want to add an item to my cart so I can buy it.” These tests don’t care if you’re using a list, a database, or a fancy ORM. They care about *udfaldet*: does the cart work? Can the user proceed? By focusing on outcomes, you keep your eyes on the *core problem*, not the plumbing.

The magic of USDD is stability. User stories rarely shift mid-project—users still need that cart, even if the backend flips from SQL to NoSQL. Unit tests, on the other hand, are brittle, breaking when you rename a method or tweak a class. With user-story tests, you can refactor freely, knowing the core functionality is safe. This is TDD done pragmatically: tests that guide design, not so much the inner workings.

Since your tests reflect user needs, you can reshape the code with confidence, knowing the system’s purpose is protected. This counters Ousterhout’s “too incremental” jab. Ja, TDD builds in small steps, but those steps are deliberate, each one a chance to refine the design. Compare that to upfront design, where you might spend weeks planning only to find the requirements changed. TDD’s iterative approach keeps you adaptable, catching regressions and edge cases as you go.

##### 1.2: TDD as a Blueprint for Shared Vision

TDD isn’t just about tests—it’s a way to *think* about your code before you write it. By writing tests first, you articulate what the system must do. In USDD, these tests become a *blueprint* for the user’s expectations, a shared language for developers, stakeholders, and future maintainers. A test isn’t just code—it’s a promise that the system delivers what matters.

This blueprint builds collaboration. When a product manager reads your test names, they see the user’s journey, not cryptic method calls. When a new teammate joins, the tests tell the story of *what the code base actually solves*. This is TDD’s true essence: not a stack of assertions, but a disciplined way to design software that solves real problems.

###### Balancing the Big Picture and the Details

Ousterhout worries TDD lacks vision, but USDD flips that on its head. By tying tests to user stories, you are in _kontrol_: the core problem your system exists to solve. Unit tests still have a place—for debugging or verifying tricky inner logic—but they’re secondary. The primary tests in USDD are integration or end-to-end tests that validate user flows, ensuring the system delivers value.

This balance avoids the mess Ousterhout fears. Tactical TDD might lead to a fragmented codebase, but pragmatic TDD, driven by user stories, builds a system that’s cohesive and purposeful. Each test cycle strengthens the design, each refactor solidifies the structure, and each user story keeps you grounded in *hvad der tæller*.

######Pragmatic TDD in Practice: En pragmatisk arbejdsgang

So, how do you bring USDD to your Python projects?

1. **Start with the User Story**: Pin down a clear user need, like “As a user, I want to log in so I can access my account.”
2. **Write a High-Level Test**: Create an integration or end-to-end test that captures the user’s goal, e.g., `test_user_can_log_in_with_valid_credentials`. Use `pytest`, not `unittest`, for simplicity.
3. **Make It Pass (Minimally)**: Write just enough code to pass the test. Don’t overengineer—focus on delivering the functionality.
4. **Refactor with SOLID in Mind**: Simplify the code, cut complexity, and align with pragmatic structure. Check that the test still passes.
5. **Add Unit Tests (If Needed)**: For complex logic, add unit tests to verify specific components, but keep them secondary.
6. **Iterate**: Move to the next user story, building incrementally while refining the design.

This workflow keeps you focused on the user while giving you space to design iteratively. It’s TDD as a *kompas*, not a cage, guiding you toward software that’s functional and built to last.

##### 1.3: WIP:Let's go through it together

- show, don't tell

🦦 introduce AAA and Given, When, Then.

###### WIP: Closing ...

Ousterhout’s critique hits because it’s half-true. Tactical TDD can lead to a mess if you chase green lights without discipline. But pragmatic TDD—driven by user stories and anchored in refactoring—sidesteps those pitfalls. It’s not anti-design; it’s *design gennem iteration*. The incrementalism he criticizes is a strength, letting you adapt to shifting requirements without breaking the system. The mess he fears comes from sloppy execution, not TDD self.

With USDD, TDD becomes a tool for solving real problems, not just passing tests. User stories keep you grounded, refactoring keeps you clean, and the result is software that’s pragmatic, adaptable, and _`bygget til at holde` {built to last, psst! Dansk}.