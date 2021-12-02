const quizDB = [
    {
        question:"01: In the stack process of inserting an element in the stack is called as ___________.",
        a:"Create",
        b:"Push",
        c:"Pop",
        d:"Evaluation",
        ans: "ans2"
    },
    {
        question:"02: Entries in a stack are “ordered”. What is the meaning of this statement?",
        a:"A collection of stacks is sortable",
        b:"Stack entries may be compared with the ‘<‘ operation",
        c:"The entries are stored in a linked list",
        d:"There is a Sequential entry that is one by one",
        ans: "ans4"
    },
    {
        question:"03: Stack in Data Structure is",
        a:"FIFO",
        b:"LIFO",
        c:"LILO",
        d:"FILO",
        ans: "ans2" 
    },
    {
        question:"04: What is called when the user will try to pop an element from empty stack?",
       
        a:"Empty Collection",
        b:"Underflow of Stack",
        c:"Garbage Collection",
        d:"Overflow of Stack",
        ans: "ans2"
    },
    {
        question:"05:What will be the value of top,if there is a size of stack is 5? ",
       
        a:"2",
        b:"5",
        c:"3",
        d:"4",
        ans: "ans4"
    },
    {
        question:"06: ___________ is the operation that cannot be performed on stack",
       
        a:"Insert at index",
        b:"Insert at beginning ",
        c:"Delete at beginnig",
        d:"None of the above",
        ans: "ans1"
    },
    {
        question:"07:Index of top value changes after?",
       
        a:"Before Deletion",
        b:"While checking underflow",
        c:"At the time of deletion",
        d:"After deletion",
        ans: "ans4"
    },
    {
        question:"08: When we remove an item from bottom of the stack, then:",
       
        a:"The stack will fall down.",
        b:"Stack will rearrange items.",
        c:"It will convert to LIFO.",
        d:"This operation is not allowed.",
        ans: "ans4"
    },
    {
        question:"09: What is the disadvantage of Stack?",
       
        a:"Not easily corrupted",
        b:"Random access is not possible",
        c:"It is used when a variable is not used outside that function",
        d:"Stack automatically cleans up the object",
        ans: "ans2"
    },
    {
        question:"10:Which of the following is the application of stack?",
       
        a:"Finding factorial",
        b:"Tower of Hanoi",
        c:"Infix to Postfix conversion",
        d:"All of the above",
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