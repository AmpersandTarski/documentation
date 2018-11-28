# The language Ampersand

Watch [this clip](https://player.ou.nl/wowzaportlets/#!production/Cq0M1nv) to learn how we use the words atom, concept, and relation. Below is a list of other words with a specific meaning in Ampersand.

<table>
  <thead>
    <tr>
      <th style="text-align:left">Word</th>
      <th style="text-align:left">Meaning</th>
      <th style="text-align:left">Example</th>
      <th style="text-align:left">Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><a href="atoms.md">Atom</a>
      </td>
      <td style="text-align:left">an indivisible item</td>
      <td style="text-align:left"><code>&quot;Peter&quot;</code>
      </td>
      <td style="text-align:left">to represent a thing</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="concepts.md">Concept</a>
      </td>
      <td style="text-align:left">a name to categorize similar items</td>
      <td style="text-align:left"><code>Person</code>
      </td>
      <td style="text-align:left">to classify similar things</td>
    </tr>
    <tr>
      <td style="text-align:left">Pair</td>
      <td style="text-align:left">two atoms: a source and a target atom</td>
      <td style="text-align:left"><code>(&quot;Ida&quot;,5)</code>
      </td>
      <td style="text-align:left">to state that two atoms are related</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="relations.md">Relation</a>
      </td>
      <td style="text-align:left">a set of pairs that is identifyable in a context by its name and type</td>
      <td
      style="text-align:left"><code>r[A*B]</code>
        </td>
        <td style="text-align:left">to build true statements and store pairs persistently in an application</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="rules/">Rule</a>
      </td>
      <td style="text-align:left">a constraint, which is supposed to remain satisfied.</td>
      <td style="text-align:left"><code>r;s |- t</code>
      </td>
      <td style="text-align:left">to provide meaning in a given context</td>
    </tr>
    <tr>
      <td style="text-align:left">satisfy</td>
      <td style="text-align:left">A rule is satisfied (in a context) if the data (in that context) do not
        cause any violation of that rule.</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">to calculate violations at run-time helps users do the right things</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="patterns.md">Pattern</a>
      </td>
      <td style="text-align:left">a set of rules</td>
      <td style="text-align:left">
        <p><code>PATTERN</code>
        </p>
        <p><code>  ...</code>
        </p>
        <p><code>ENDPATTERN</code>
        </p>
      </td>
      <td style="text-align:left">to gather rules that belong together for reusing them in different contexts</td>
    </tr>
    <tr>
      <td style="text-align:left">Population</td>
      <td style="text-align:left">a set of pairs in a context</td>
      <td style="text-align:left"><code>POPULATION r[A*B] CONTAINS [ (&quot;Ida&quot;,5), (&quot;Bob&quot;,1) ]</code>
      </td>
      <td style="text-align:left">to represent the facts (i.e. true statements) in an information system</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="context.md">Context</a>
      </td>
      <td style="text-align:left">a population together with a set of rules that are satisfied by the population.</td>
      <td
      style="text-align:left">
        <p><code>CONTEXT</code>
        </p>
        <p><code>  ...</code>
        </p>
        <p><code>ENDCONTEXT</code>
        </p>
        </td>
        <td style="text-align:left">to maintain a consistent representation of a real life situation</td>
    </tr>
    <tr>
      <td style="text-align:left">View</td>
      <td style="text-align:left">A set of pairs that can be shown to users in a particular formulation.</td>
      <td
      style="text-align:left"></td>
        <td style="text-align:left">to represent facts</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="services/">Service</a>
      </td>
      <td style="text-align:left">A structure meant for "the outside world" to communicate with the system
        and possibly change the population.</td>
      <td style="text-align:left"><code>INTERFACE Request FOR Customer</code>
      </td>
      <td style="text-align:left">to let "the outside world" communicate with the system in a given context
        and possibly change its population</td>
    </tr>
    <tr>
      <td style="text-align:left">Multiplicity</td>
      <td style="text-align:left">A predefined property of a relation</td>
      <td style="text-align:left"><code>UNI</code>, <code>TOT</code>, <code>SUR</code>, <code>INJ</code>
      </td>
      <td style="text-align:left">to constrain a relation with predefined properties</td>
    </tr>
    <tr>
      <td style="text-align:left"><a href="terms/">Term</a>
      </td>
      <td style="text-align:left">A combination of relations and operators that satisfy the Ampersand syntax</td>
      <td
      style="text-align:left"><code>r;s-t</code>
        </td>
        <td style="text-align:left">to express rules</td>
    </tr>
    <tr>
      <td style="text-align:left">Operator</td>
      <td style="text-align:left">a symbol used in combining terms into other terms.</td>
      <td style="text-align:left"><code>-</code>, <code>~</code>, <code>\/</code>, <code>/\</code>, <code>-</code>, <code>;</code>, <code>\</code>, <code>/</code>, <code>|-</code>, <code>=</code>
      </td>
      <td style="text-align:left">to express more complex rules.</td>
    </tr>
    <tr>
      <td style="text-align:left">Signature</td>
      <td style="text-align:left">the name, source and target of a relation</td>
      <td style="text-align:left"><code>r[A*B]</code>
      </td>
      <td style="text-align:left">to identify a set of pairs within a context.</td>
    </tr>
    <tr>
      <td style="text-align:left">Role</td>
      <td style="text-align:left">A name for a group of people</td>
      <td style="text-align:left"><code>ROLE Customer MAINTAINS paymentObligation</code>
      </td>
      <td style="text-align:left">to talk about users without having any users</td>
    </tr>
  </tbody>
</table>## Reading guide

Syntactic definitions are given where the underlying notions \(e.g. rule, relation, pattern, etc.\) are discussed. The metasyntax is singled out [on a separate page](how-to-read-syntax-statements.md). Because [terms](terms/) are defined in relation algebra, their semantics are explained in various ways to suit the background of each individual reader. Terms are the only algebraically defined things.

This section is organized by discussing each notion in isolation. Hyperlinks are added in the text to let the reader navigate on her own. The text is suitable for reference purposes, so there is no preferred order in reading.

