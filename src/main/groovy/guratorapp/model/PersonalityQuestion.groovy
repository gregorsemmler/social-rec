package guratorapp.model

import groovy.transform.CompileStatic

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

/**
 * Answer options for a question in the Thomas/Kilman Conflict Mode Instrument test.
 * The questions with their corresponding answers A and B are:
 * 1, "I try to find a compromise solution", "I attempt to deal with all of his and my concerns"
 2, "There are times when I let others take responsibility for solving the problem", "Rather than negotiate the things on which we disagree, I try to stress those things upon which we both agree"
 3, "I am usually firm in pursuing my goals", "I might try to soothe the other's feelings and preserve our relationship"
 4, "I try to find a compromise solution", "I sometimes sacrifice my own wishes for the wishes of the other person"
 5, "I feel that the differences are not always worth worrying about", "I make some effort to get my way"
 6, "I am usually firm in pursuing my goals", "I attempt to get all concerns and issues immediately out in the open"
 7, "I try to postpone the issue until I have had some time to think it over", "I give up some points in exchange for others"
 8, "I try to avoid creating unpleasantness for myself", "I try to win my position"
 9, "I consistently seek the other's help in working out a solution", "I try to do what is necessary to avoid useless tensions"
 10, "I attempt to get all concerns and issues immediately out in the open", "I might try to soothe the other's feelings and preserve our relationship"
 11, "I am firm in pursuing my goals", "I try to find a compromise solution"
 12, "I sometimes avoid taking positions which could create controversy", "I will let him have some of his positions if he lets me have some of mine"
 13, "I attempt to immediately work through our differences", "I try to find a fair combination of gains and losses for both of us"
 14, "I attempt to get all concerns and issues immediately out in the open", "I try to postpone the issue until I have had time to think it over"
 15, "If it makes the other person happy, I might let him maintain his views", "I will let him have some of his positions if he lets me have some of mine"
 16, "I am usually firm in pursuing my goals", "I try to do what is necessary to avoid useless tensions"
 17, "I try not to hurt the other's feelings", "I try to convince the other person of the merits of my position"
 18, "I might try and soothe the other's feelings and preserve our relationship", "I try to do what is necessary to avoid tensions"
 19, "I tell him my ideas and ask him for his", "I try to show him the logic and benefits of my position"
 20, "I propose a middle ground", "I press to get my points made"
 21, "I try not to hurt the other's feelings", "I always share the problem with the other person so that we can work it out"
 22, "I propose a middle ground", "I feel that the differences are not always worth worrying about"
 23, "I am usually firm in pursuing my goals", "I usually seek the other's help in working out a solution"
 24, "I sometimes avoid taking positions which could create controversy", "If it makes the other person happy, I might let him maintain his views"
 25, "I propose a middle ground", "I am nearly always concerned with satisfying all our wishes"
 26, "I try to show him the logic and benefits of my position", "In approaching negotiations, I try to be considerate of the other person's wishes"
 27, "If the other's position seems very important to him, I would try to meet his wishes", "I try to get him to settle for a compromise solution"
 28, "I am very often concerned with satisfying all our wishes", "There are times when I let others take responsibility for solving the problem"
 29, "I try to find a position that is intermediate between his and mine", "I assert my wishes"
 30, "In approaching negotiations, I try to be considerate of the other person's wishes", "I always lean toward a direct discussion of the problem")
 */
@CompileStatic
@Entity
@Table(name = "personalityquestion")
class PersonalityQuestion {
    @Id
    Integer id
    @Column(name = "optionA")
    String optionA
    @Column(name = "optionB")
    String optionB
}
