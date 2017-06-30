(*
  File:    Increments.thy
  Author:  Stef Joosten <stef.joosten@ou.nl>

  Proofs for Preserving Invariant Rules in Relation Algebra
*)

theory Increments imports Main
begin

section \<open>Code Fragments\<close>
text {*
	Which code can preserve invariance and can we produce that code for arbitrary rules?
	This question is key for deriving code from invariants.
	The purpose of that code is to preserve invariance of rules by insertion and deletion into and from relations.

	Let us start talking about change.
	Inserting (a set of) pairs $\Delta$ into a relation $r$ yields $r\cup\Delta$.
	Likewise, deleting pairs $\Delta$ from a relation $r$ yields $r-\Delta$.
	The code we derive is built around the basic operations insert and delete.
	Since rules are built with relations as bricks and operators as mortar,
	we are wondering whether a change in on relation can be compensated by one or more changes in other relations.
	That is what the preservation of invariance is all about.
*}

subsection \<open>Zero step lemmas\<close>
text {*
	We will start with the low hanging fruit,
	which consists of changes in rules with boolean operators $\cup$, $\cap$, and complement.
	We use a number of properties, which we have formulated such that the changes (inserts and deletes)
	are made explicit in the formulas.
*}
lemma "Preserve t=r inter s with Ins Delta into t":
  shows "t=r\<inter>s \<Longrightarrow> t\<union>\<Delta>=(r\<union>\<Delta>)\<inter>(s\<union>\<Delta>)" by auto
    
lemma "Preserve t=r inter s with Del Delta from t":
  shows "t=r\<inter>s \<Longrightarrow> t-\<Delta>=(r-\<Delta>)\<inter>s" by auto
    
lemma "Preserve t=r union s with Ins Delta into t":
  shows "t=r\<union>s \<Longrightarrow> t\<union>\<Delta>=(r\<union>\<Delta>)\<union>s" by auto
    
lemma "Preserve t=r union s with Del Delta from t":
  shows "t=r\<union>s \<Longrightarrow> t-\<Delta>=(r-\<Delta>)\<union>(s-\<Delta>)" by auto
  
lemma "Preserve r = -s with Ins Delta into r":
  shows "r=-s \<Longrightarrow> r\<union>\<Delta>=-(s-\<Delta>)" by auto
    
lemma "Preserve r = -s with Del Delta from r":
  shows "r=-s \<Longrightarrow> r-\<Delta>=-(s\<union>\<Delta>)" by auto
    
subsection \<open>Proofs with intersection\<close>
text {*
	Take a term of the form $r\cap s$, and suppose we insert $\Delta$ into $r$.
	It makes us wonder what is needed in $s$ to have the entire expression return to its original value.
*}
lemma "Keep r inter s constant with Del":
  assumes "\<Delta> \<inter> r \<inter> s = -UNIV"
  shows "(r-\<Delta>)\<inter>s = r\<inter>s" (is "?lhs = ?rhs") (* SJ: ?lhs en ?rhs als afkorting gebruiken *)
(* SJ: dit bewijs werkt ook en is korter: using assms by auto *)
proof-
  have "?lhs = r \<inter> -\<Delta> \<inter> s" by auto
  also have "\<dots> = ?rhs" using assms by auto
  finally show ?thesis by auto
qed

lemma "Preserve r inter s on Del Delta from r":
  assumes "\<Delta> \<inter> r \<inter> s = -UNIV"
  shows "(r-\<Delta>)\<inter>s = r\<inter>s"
proof-
  have "(r-\<Delta>) \<inter> s
=
        r \<inter> -\<Delta> \<inter> s" by auto
  also have "\<dots>
=
        r \<inter> s" using assms by auto
  finally show ?thesis by auto
qed

lemma "Keep r inter s constant with Ins":
  assumes "\<Delta> \<subseteq> r \<inter> s"
  shows "(r\<union>\<Delta>)\<inter>s = r\<inter>s" 
proof-
  have "(r\<union>\<Delta>) \<inter> s
=
        (r\<inter>s) \<union> (\<Delta>\<inter>s)" by auto
  also have "\<dots>
=
        r \<inter> s" using assms by auto
  finally show ?thesis by auto
qed

lemma "Preserve r inter s on Ins Delta into r":
  assumes "UNIV \<subseteq> r \<inter> s"
  shows "(r\<union>\<Delta>)\<inter>s = r\<inter>s"
proof-
  have "(r\<union>\<Delta>) \<inter> s
=
        (r\<inter>s)" using assms by auto
  show ?thesis using assms by auto
qed

subsection \<open>Proofs with union\<close>
text {*
  Consider a needle of length $l$ whose centre has the $x$-coordinate $x$. The following then
  defines the set of all $x$-coordinates that the needle covers 
  (i.e. the projection of the needle onto the $x$-axis.)
*}
lemma "Keep r union s constant with Del":
  shows "(r-\<Delta>) \<union> (s\<union>(\<Delta>\<inter>r)) = r\<union>s" by auto

lemma "Preserve r union s on Del Delta from r":
  assumes "UNIV \<subseteq> r \<union> s"
  shows "(r-\<Delta>) \<union> (s\<union>\<Delta>) = r\<union>s"
proof-
  have "(r-\<Delta>) \<union> (s\<union>\<Delta>)
=
        (r \<inter> -\<Delta>) \<union> s \<union> \<Delta>" by auto
  also have "\<dots>
=
        (r\<union>s\<union>\<Delta>) \<inter> (-\<Delta>\<union>s\<union>\<Delta>)" by auto
  also have "\<dots>
=
        r\<union>s\<union>\<Delta>" by auto
  also have "\<dots>
=
        r\<union>s" using assms by auto
  finally show ?thesis by auto
qed

lemma "Keep r union s constant with Ins":
  assumes "\<Delta> \<subseteq> r \<union> s"
  shows "(r\<union>\<Delta>) \<union> s = r\<union>s"
proof-
  have "r \<union> \<Delta> \<union> s
=
        r \<union> s" using assms by auto
  show ?thesis using assms by auto
qed

lemma "Preserve r union s on Ins Delta into r":
  assumes "UNIV \<subseteq> r \<union> s"
  shows "(r\<union>\<Delta>) \<union> s = r\<union>s"
proof-
  have "(r\<union>\<Delta>) \<union> s
=
        (r\<union>s) \<union> \<Delta>" by auto
  also have "\<dots>
=
        r \<union> s" using assms by auto
  finally show ?thesis by auto
qed

subsection \<open>Proofs with relational operators\<close>
text {*
  Consider a needle of length $l$ whose centre has the $x$-coordinate $x$. The following then
  defines the set of all $x$-coordinates that the needle covers 
  (i.e. the projection of the needle onto the $x$-axis.)
*}

(* right residual *)
definition residual :: "('a \<times> 'b) set \<Rightarrow> ('a \<times> 'c) set \<Rightarrow> ('b \<times> 'c) set" where
  "residual R S \<equiv> \<Union> {Q . R O Q \<subseteq> S}" (* biggest Q s.t. R O Q \<subseteq> S *)

lemma residual_RA[simp]: (* een andere definitie en een bewijs van equivalentie *)
  shows "residual R S = - (R\<inverse> O (- S))"
  proof
    show "residual R S \<subseteq> - (R\<inverse> O - S)" unfolding residual_def by auto
    have "R O (- (R\<inverse> O - S)) \<subseteq> S" by auto
    then show "- (R\<inverse> O - S) \<subseteq> residual R S" unfolding residual_def by auto
  qed

(* twee manieren om een stelling te bewijzen: *)
lemma stef_like_solution:
  fixes \<Delta> r s
  defines "\<Delta>\<^sub>s \<equiv> residual \<Delta> (\<Delta> O s)"
  shows "(r \<union> \<Delta>) O (s - \<Delta>\<^sub>s) \<subseteq> r O s"
  using assms by auto (* via de RA defenitie *)

lemma stef_like_solution_2:
  fixes \<Delta> r s
  defines "\<Delta>\<^sub>s \<equiv> residual \<Delta> (\<Delta> O s)"
  shows "(r \<union> \<Delta>) O (s - \<Delta>\<^sub>s) \<subseteq> r O s"
  using assms unfolding residual_def by auto (* via de \<Union> definitie *)

lemma smallest_delta_s:
  assumes defDelta: "\<Delta>\<^sub>s \<equiv> s-residual (r\<union>\<Delta>) (r O s)"
  shows "(r\<union>\<Delta>)O(s-\<Delta>\<^sub>s) \<subseteq> r O s"
proof-
  have "(r\<union>\<Delta>)O(s-\<Delta>\<^sub>s) \<subseteq> r O s
\<longleftrightarrow>
   s-\<Delta>\<^sub>s \<subseteq> residual (r\<union>\<Delta>) (r O s)" by auto
  also have "\<dots>
\<longleftrightarrow>
   s - residual (r\<union>\<Delta>) (r O s) \<subseteq> \<Delta>\<^sub>s" by auto
  also have "\<dots> \<longleftrightarrow>True"
    using defDelta by auto
  finally show ?thesis by auto
qed

lemma test:
  shows "r O (s\<union>x) \<subseteq> r O s \<longleftrightarrow> r O x \<subseteq> r O s" by simp

lemma largest_delta_s:
  assumes "x\<equiv>r-\<Delta>"
      and "y=r O s"
      and "\<Delta>\<^sub>s=residual (r\<union>\<Delta>) (r O s)"
  shows "(r-\<Delta>)O(s\<union>\<Delta>\<^sub>s) \<subseteq> r O s"
proof-
  have "x O residual x y \<subseteq> y
\<longleftrightarrow>
   (r-\<Delta>) O residual (r-\<Delta>) (r O s) \<subseteq> r O s" using assms by auto
  also have "\<dots>
\<longleftrightarrow>
   (r-\<Delta>) O \<Delta>\<^sub>s \<subseteq> r O s" using assms by auto
  also have "\<dots>
\<longleftrightarrow>
   (r-\<Delta>) O (s\<union>\<Delta>\<^sub>s) \<subseteq> r O s" using assms by auto
  also have "\<dots> \<longleftrightarrow>True"
    using assms by auto
  finally show ?thesis using assms by auto
qed

lemma funny:
  assumes deltaS         : "(r-\<Delta>)\<inverse> O (r\<inter>\<Delta>) O s \<subseteq> \<Delta>\<^sub>s"
  assumes totalRminDelta : "(r O s O s\<inverse> O r\<inverse>) \<inter> Id \<subseteq> (r-\<Delta>) O (r-\<Delta>)\<inverse>"
  shows "r O s \<subseteq> (r-\<Delta>) O (s\<union>\<Delta>\<^sub>s)"
proof-
  have "(r-\<Delta>)\<inverse> O (r\<inter>\<Delta>) O s \<subseteq> \<Delta>\<^sub>s" using deltaS by auto
  hence "(r-\<Delta>) O (r-\<Delta>)\<inverse> O (r\<inter>\<Delta>) O s \<subseteq> (r-\<Delta>) O \<Delta>\<^sub>s" by auto
  hence "(r\<inter>\<Delta>) O s \<subseteq> (r-\<Delta>) O \<Delta>\<^sub>s" using totalRminDelta by blast
  hence "(r-(r-\<Delta>)) O s \<subseteq> (r-\<Delta>) O \<Delta>\<^sub>s" by auto
  hence "(r O s)-((r-\<Delta>) O s) \<subseteq> (r-\<Delta>) O \<Delta>\<^sub>s" by auto
  hence "r O s \<subseteq> (r-\<Delta>) O s \<union> (r-\<Delta>) O \<Delta>\<^sub>s" by auto
  hence "r O s \<subseteq> (r-\<Delta>) O (s \<union> \<Delta>\<^sub>s)" by auto
  then show ?thesis using assms by blast
qed

end