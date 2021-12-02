const quizDB = [
    {
        question:"01: Finding the location of a given item in a collection of items is called _______",
        a:"Discovering",
        b:"Finding",
        c:"Searching",
        d:"Mining",
        ans: "ans1"
    },
    {
        question:"02: Sorting a file F usually refers to sorting F with respect to a particular key called________",
        a:"Basic key",
        b:"Primary key",
        c:"Starting key",
        d:"Index key",
        ans: "ans2"
    },
    {
        question:"03: If the number of record to be sorted large and the key is long, then ________ sorting can be efficient.",
        a:"Merge",
        b:"Heap",
        c:"Bubble",
        d:"Quick",
        ans: "ans4"
    },
    {
        question:"04: The easiest sorting is________",
       
        a:"quick sort",
        b:"shell sort",
        c:"heap sort",
        d:"selection sort",
        ans: "ans4"
    },
    {
        question:"05: The radix sort does not work correctly if each individual digit is sorted using",
       
        a:"Insertion sort",
        b:"Counting sort",
        c:"Selection sort",
        d:"Bubble sort",
        ans: "ans3"
    },
    {
        question:"06:Which of the following algorithm(s) can be used to sort n integers in range [1…..n^3] in O(n) time?",
       
        a:"Heap sort",
        b:"Quick sort",
        c:"Merge sort",
        d:"Radix sort",
        ans: "ans4"
    },
    {
        question:"07:Which of the following algorithm design technique is used in the quick sort algorithm?",
       
        a:"Dynamic programming",
        b:"Backtracking",
        c:"Divide-and-conquer",
        d:"Greedy method",
        ans: "ans3"
    },
    {
        question:"08:For merging two sorted lists of size m and n into sorted list of size m+n, we require comparisons of",
       
        a:"O(m)",
        b:"O(n)",
        c:"O(m+n)",
        d:"O(logm + logn)",
        ans: "ans3"
    },
    {
        question:"09: In a binary max heap containing n numbers, the smallest element can be found in time",
       
        a:"θ(n)",
        b:"θ(logn)",
        c:"θ(log(logn))",
        d:"θ(1)",
        ans: "ans1"
    },
    {
        question:"10:The given array is arr = {3, 4, 5, 2, 1}. The number of iterations in bubble sort and selection sort respectively are ",
        a:"5 and 4",
        b:"4 and 5",
        c:"2 and 4",
        d:"2 and 5",
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