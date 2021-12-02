const quizDB = [
    {
        question:"01: Queue in Data Structure is",
        a:"FIFO",
        b:"LIFO",
        c:"LILO",
        d:"FILO",
        ans: "ans1"
    },
    {
        question:"02: If the elements A B C and D are placed in a queue and are deleted one at a time, in what order will they be removed?",
        a:"ABDC",
        b:"DCBA",
        c:"DCAB",
        d:"ABCD",
        ans: "ans4"
    },
    {
        question:"03: A circular queue is implemented using an array of size 10. The array index starts with 0, front is 6, and rear is 9. The insertion of next element takes place at the array index.",
        a:"1",
        b:"7",
        c:"0",
        d:"10",
        ans: "ans3"
    },
    {
        question:"04: In case of insertion into a linked queue, a node borrowed from the __________ list is inserted in the queue.",
       
        a:"Stack",
        b:"Queue",
        c:"Tree",
        d:"Array",
        ans: "ans2"
    },
    {
        question:"05:The data structure required for Breadth First Traversal on a graph is?",
       
        a:" θ (n)",
        b:" θ (n + k)",
        c:" θ (nk)",
        d:" θ (n2)",
        ans: "ans1"
    },
    {
        question:"06: Deletion operation is done using ……… in a queue.",
       
        a:"front",
        b:"rear",
        c:"top",
        d:"list",
        ans: "ans1"
    },
    {
        question:"07:New nodes are added to the ……… of the queue.",
       
        a:"Front",
        b:"Back",
        c:"Middle",
        d:"Both A and B",
        ans: "ans2"
    },
    {
        question:"08:How many stacks are needed to implement a queue. Consider the situation where no other data structure like arrays, linked list is available to you.",
       
        a:"1",
        b:"2",
        c:"3",
        d:"4",
        ans: "ans2"
    },
    {
        question:"09: Which of the following is not the type of queue?",
       
        a:"Ordinary queue",
        b:"Priority queue",
        c:"Circular queue",
        d:"Single ended queue",
        ans: "ans2"
    },
    {
        question:"10:In linked list implementation of a queue, the important condition for a queue to be empty is?",
       
        a:"FRONT is null",
        b:"REAR is null",
        c:"LINK is empty",
        d:"FRONT==REAR-1",
        ans: "ans1"
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