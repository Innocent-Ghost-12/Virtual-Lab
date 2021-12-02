const quizDB = [
    {
        question:"01: Which of the following is not a stable sorting algorithm?",
        a:"Insertion sort",
        b:"Selection sort",
        c:"Bubble sort",
        d:"Merge sort",
        ans: "ans2"
    },
    {
        question:"02: Which of the following is a stable sorting algorithm?",
        a:"Merge sort",
        b:"Typical in-place quick sort",
        c:"Heap sort",
        d:"Selection sort",
        ans: "ans1"
    },
    {
        question:"03: Time complexity of bubble sort in best case is",
        a:"θ (n)",
        b:"θ (nlogn)",
        c:"θ (n²)",
        d:"θ (n(logn)²)",
        ans: "ans1"
    },
    {
        question:"04: Which of the following algorithm design technique is used in the quick sort algorithm?",
       
        a:"Dynamic programming",
        b:"Backtracking",
        c:"Divide-and-conquer",
        d:"Greedy method",
        ans: "ans3"
    },
    {
        question:"05: The lower bound on the number of comparisons performed by comparison-based sorting algorithm is",
       
        a:"Ω (1)",
        b:"Ω (n)",
        c:"Ω (nlogn)",
        d:" Ω (n²)",
        ans: "ans3"
    },
    {
        question:"06: The number of swappings needed to sort the numbers 8,22,7,9,31,5,13 in ascending order, using bubble sort is",
       
        a:"11",
        b:"12",
        c:"13",
        d:"10",
        ans: "ans4"
    },
    {
        question:"07:What is the advantage of bubble sort over other sorting techniques?",
       
        a:"It is faster",
        b:"Consumes less memory",
        c:"Detects whether the input is already sorted",
        d:" All of the mentioned",
        ans: "ans3"
    },
    {
        question:"08:Which of the following is an external sorting?",
       
        a:"Insertion Sort",
        b:"Bubble Sort",
        c:"Merge Sort",
        d:"Tree Sort",
        ans: "ans3"
    },
    {
        question:"09:  If the number of record to be sorted large and the key is long, then ___________ sorting can be efficient.",
       
        a:"Merge",
        b:"Heap",
        c:"Rdix",
        d:"Bubble",
        ans: "ans3"
    },
    {
        question:"10:Merging k sorted tables into a single sorted table is called _________",
       
        a:"k way merging",
        b:"k th merge",
        c:"k+1 merge",
        d:"k-1 merge",
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