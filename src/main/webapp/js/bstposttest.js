/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
const quizDB = [
    {
        question:"01:Which of the following is false about a binary search tree?",
        a:"The left child is always lesser than its parent",
        b:"The right child is always greater than its parent",
        c:"The left and right sub-trees should also be binary search trees",
        d:"In order sequence gives decreasing order of element",
        ans: "ans4"
    },
    {
        question:"02: What is the speciality about the inorder traversal of a binary search tree?",
        a:"It traverses in a non increasing order.",
        b:"It traverses in an increasing order",
        c:"It traverses in a random fashion",
        d:"It traverses based on priority of the node",
        ans: "ans2"
    },
    {
        question:"03:  What are the worst case and average case complexities of a binary search tree?",
        a:" O(n), O(n)",
        b:"O(logn), O(logn)",
        c:"O(logn), O(n)",
        d:"O(n), O(logn)",
        ans: "ans4"
    },
    {
        question:"04:What are the conditions for an optimal binary search tree and what is its advantage?",
       
        a:"The tree should not be modified and you should know how often the keys are accessed, it improves the lookup cost",
        b:"You should know the frequency of access of the keys, improves the lookup time",
        c:"The tree can be modified and you should know the number of elements in the tree before hand, it improves the deletion time",
        d:" The tree should be just modified and improves the lookup time",
        ans: "ans1"
    },
    {
        question:"05:The following numbers are inserted into an empty binary search tree in the given order: 10,1,3,5,15,12,16. What is the height of the binary search tree? ",
       
        a:"2",
        b:"5",
        c:"3",
        d:"4",
        ans: "ans2"
    },
    {
        question:"06:Consider the binary search tree with n elements. The time required to search given element is:__________",
       
        a:"Θ(log n)",
        b:"Θ(n log n)",
        c:"Θ(n²)",
        d:"Θ(n² log n)",
        ans: "ans1"
    },
    {
        question:"07:Which of the following is/are correct in order traversal sequence(s) of binary search tree?",
       
        a:"3,5,7,8,15,25,19.",
        b:"5,8,9,12,10,15,25.",
        c:"2,7,10,8,14,16,20.",
        d:"4,6,7,9,18,20,25",
        ans: "ans4"
    },
    {
        question:"08: A binary search tree is used to locate the number 43. Which one of the following probe sequence is not possible?",
       
        a:"61,52,14,17,40,43",
        b:"10,65,31,48,37,43",
        c:"81,61,52,14,41,43",
        d:"17,77,27,66,18,43",
        ans: "ans4"
    },
    {
        question:"09:Suppose there are eleven items in an array.How many searches are required on the average, if binary search is employed and all searches are successful in findind the item?",
       
        a:"3.00",
        b:"3.46",
        c:"2.81",
        d:"3.33",
        ans: "ans1"
    },
    {
        question:"10:Which of the following is the application of stack?",
       
        a:"Finding factorial",
        b:"Tower of Hanoi",
        c:"Maintaining the playlist in media players",
        d:"used for indexing and multi-level indexing.",
        ans: "ans4"
    },
      
];

const question = document.querySelector('.question');
const option1 = document.querySelector('#option1');
const option2 = document.querySelector('#option2');
const option3 = document.querySelector('#option3');
const option4 = document.querySelector('#option4');
const submit = document.querySelector('#submit');
const showScore = document.querySelector('#showScore');

const answers = document.querySelectorAll('.answer');
let questionCount =0;
let score = 0;


const loadQuestion = () =>{
    const questionList = quizDB[questionCount];

     question.innerText=quizDB[questionCount].question;

     option1.innerText = questionList.a;
     option2.innerText = questionList.b;
     option3.innerText = questionList.c;
     option4.innerText = questionList.d;

}
loadQuestion();
const getCheckAnswer = () =>{
    let  answer;
    answers.forEach((curAnsElem)=>{
        if(curAnsElem.checked){
            answer = curAnsElem.id;
        }
      
    });
    return answer;

};

const deselectAll = () => {
    answers.forEach((curAnsElem) => curAnsElem.checked = false);
}

submit.addEventListener('click',()=>{
    const checkedAnswer = getCheckAnswer();
    console.log(checkedAnswer);
    if(checkedAnswer === quizDB[questionCount].ans){
        score++;
    };
    questionCount++;
    deselectAll();
    if(questionCount < quizDB.length){
        loadQuestion();
    }
    else{
        showScore.innerHTML= `
        <h3> You Scored : ${score}/${quizDB.length} ✌️ </h3>
        <button class="btn" onclick= "location.reload()"> play again! </button>
        `;
        showScore.classList.remove('scoreArea');
    }
});