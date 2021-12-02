const quizDB = [
    {
        question:"01:Which of the following is false about a binary search tree?",
        a:"Preorder",
        b:"Postorder",
        c:"Inorder",
        d:"None of the above ",
        ans: "ans3"
    },
    {
        question:"02: Which of the following statements about binary trees is NOT true?",
        a:"Every binary tree has at least one node. ",
        b:"Every non-empty tree has exactly one root node.",
        c:"Every node has at most two children. ",
        d:"Every non-root node has exactly one parent. ",
        ans: "ans2"
    },
    {
        question:"03: The number of edges from the root to the node is called __________ of the tree.",
        a:"Height",
        b:"Depth",
        c:"Length",
        d:"Width",
        ans: "ans2"
    },
    {
        question:"04:What is a full binary tree?",
       
        a:"Each node has exactly zero or two children",
        b:"Each node has exactly two children",
        c:"All the leaves are at the same level",
        d:"Each node has exactly one or two children",
        ans: "ans1"
    },
    {
        question:"05:Which of the following is not an advantage of trees?",
       
        a:"Hierarchical structure",
        b:"Faster search",
        c:"Router algorithms",
        d:"Undo/Redo operations in a notepad",
        ans: "ans4"
    },
    {
        question:"06: In a full binary tree if number of internal nodes is I, then number of leaves L are?",
       
        a:"L = 2*I",
        b:"L = I + 1",
        c:"L = I – 1",
        d:"L = 2*I – 1",
        ans: "ansb"
    },
    {
        question:"07: In a full binary tree if number of internal nodes is I, then number of nodes N are?",
       
        a:"N = 2*I",
        b:"N = I + 1",
        c:"N = I – 1",
        d:"N = 2*I + 1",
        ans: "ans4"
    },
    {
        question:"08: In a full binary tree if there are L leaves, then total number of nodes N are?",
       
        a:"N = 2*L",
        b:"N = L + 1",
        c:"N = L – 1",
        d:"N = 2*L – 1",
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
        question:"10:A B+ tree can contain a maximum of 7 pointers in a node. What is the minimum number of keys in leaves?",
       
        a:"6",
        b:"3",
        c:"4",
        d:"7",
        ans: "ans2"
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