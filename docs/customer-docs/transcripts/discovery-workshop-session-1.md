# Discovery Workshop Transcript — Session 1

**Date:** 2026-08-18
**Attendees:** Priya N (Network Ops Lead), Marcus D (Senior Analyst), Ellen T (Compliance),
Raj S (Platform Security), ISD delivery team
**Status:** MOCK DOCUMENT — created for Agent Workspace evaluation only

---

**ISD:** Walk us through what a typical enquiry looks like today.

**Marcus:** A provider relations rep calls and asks whether a specific clinic is
still in network for a given plan year, and what the reimbursement tier is. I
check the contracting system, then the credentialing system, then a spreadsheet
that tracks amendments. If the answer is not obvious I ask a colleague.

**ISD:** How long does that take?

**Marcus:** Fifteen to twenty minutes. Longer if the provider has multiple
locations, because each location can have a different contract status.

**Priya:** That is the part people get wrong most often. Analysts assume the
group contract applies to every location, and it does not. If the agent gets
that wrong we will lose trust immediately.

**ISD:** So location level contract status is a distinct requirement.

**Priya:** Yes. Answer at the location level, and say explicitly which location
you are talking about.

**Ellen:** I need to raise a boundary. Analysts must never use this to tell a
provider whether a specific service will be covered for a specific member. That
is a coverage determination and it is regulated. If someone asks that, the agent
must decline and point them to the benefits team.

**ISD:** Understood. Refusal plus routing, not a partial answer.

**Ellen:** Correct. And I want the refusal logged so we can evidence it.

**Raj:** Two things from security. First, analysts are scoped to business units.
Someone supporting the Southeast region must not see Northeast contracts. That
is enforced in the source systems today and it must be enforced here too, not
just filtered in the UI.

**ISD:** So authorization is evaluated at query time against the requester's
identity, not applied after retrieval.

**Raj:** Exactly. Second, nothing leaves our tenant. No provider data to an
external endpoint, no data used for model training.

**Marcus:** Can I add something practical? If the agent does not know, it needs
to say so. I would rather it says "I could not find an amendment record for this
location" than invent something plausible. A wrong confident answer is worse
than no answer.

**Priya:** Agreed. And every answer needs the source. If it tells me a tier, I
need to see which contract record it came from so I can verify it myself.

**ISD:** What about speed?

**Marcus:** If it takes longer than about ten seconds people will go back to the
old way. Under five feels instant.

**Priya:** One more. Contracts change constantly. If an amendment was loaded
yesterday the agent must reflect it. Stale answers are dangerous.

**Ellen:** And retention. Everything the agent is asked and everything it answers
is retained for seven years, same as our other systems of record.

**ISD:** Anything you explicitly do not want in the first release?

**Priya:** Do not let it write anything. Read only. If it can update contracts
we will never get it approved.

**Raj:** Agree. Read only for v1.

**Marcus:** I would like to flag bad answers when I see them. A thumbs down with
a comment would be enough.

**Priya:** That is nice to have, not day one.
