/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

console.log("Js connected");

const quizDB = [
    {
        question: "Q.1: What is the full form of HTML",
        a : "Hello TO My Land",
        b : "Hey Text Markup Language",
        c : "HyperText Markup Language",
        d : "Hypertext Markup Language",
        ans : "ans4"
    },
    {
        question: "Q.2: What is the full form of HTML",
        a : "Hello TO My Land",
        b : "Hey Text Markup Language",
        c : "HyperText Markup Language",
        d : "Hypertext Markup Language",
        ans : "ans2"
    },
    {
        question: "Q.3: What is the full form of HTML",
        a : "Hello TO My Land",
        b : "Hey Text Markup Language",
        c : "HyperText Markup Language",
        d : "Hypertext Markup Language",
        ans : "ans3"
    },
    {
        question: "Q.4: What is the full form of HTML",
        a : "Hello TO My Land",
        b : "Hey Text Markup Language",
        c : "HyperText Markup Language",
        d : "Hypertext Markup Language",
        ans : "ans1"
    }
];

const question = document.querySelector('.question');
const option1 = document.querySelector('#option1');
const option2 = document.querySelector('#option2');
const option3 = document.querySelector('#option3');
const option4 = document.querySelector('#option4');
const submit = document.querySelector('#submit');

const showScore = document.querySelector('#showScore');

const answers = document.querySelectorAll('.answer');
let questionCount = 0;
let score = 0;

const loadQuestion = () => {
    
    const questionList  = quizDB[questionCount];
    
    question.innerText = (questionList.question);
    
    option1.innerText = questionList.a;
    option2.innerText = questionList.b;
    option3.innerText = questionList.c;
    option4.innerText = questionList.d;
}

loadQuestion();

const getCheckAnswer = () => {
    let answer;
    
    answers.forEach((curAnsElem) =>{
        if(curAnsElem.checked){
            answer = curAnsElem.id;
        }
    });
       return answer;
}

const deSelectAll = () => {
    answers.forEach((curAnsElem) => curAnsElem.checked = false);
}
submit.addEventListener('click',()=>{
    const checkedAnswer = getCheckAnswer();
    console.log(checkedAnswer);
    
    if(checkedAnswer === quizDB[questionCount].ans){
        score++;
    }
    questionCount++;
    
    deSelectAll();
    
    if(questionCount < quizDB.length){
        loadQuestion();
    }
    else{
        showScore.innerHTML = `
        <h3> You scored ${score}/${quizDB.length} ✌</h3>
        <button class="btn" onclick="location.reload()">Take the test again</button>`;
        showScore.classList.remove('scoreArea');
    }
});

