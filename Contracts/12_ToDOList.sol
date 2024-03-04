//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract TodoList {

    struct Task {
        uint256 id;
        string description;
        bool completed;
    }

    mapping (uint => Task) public tasks;
    uint private taskIdCounter = 0;

    function addTask( string memory description) public {
        tasks[taskIdCounter] = Task(taskIdCounter, description, false);
        taskIdCounter++;
    }

    function completeTask(uint _taskId) public {
        require(_taskId < taskIdCounter, "Task doesnt exists");
        Task storage task = tasks[_taskId];
        require(!task.completed,"Task already completed");
        task.completed = true;
    }

    function listTask() public view returns(Task[] memory){
        Task[] memory taskList = new Task[](taskIdCounter);

        for(uint i =0; i< taskIdCounter; i++){
            taskList[i] = tasks[i];
        }

        return taskList;
    }



}