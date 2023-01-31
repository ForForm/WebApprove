import { Component, OnInit } from '@angular/core';
import { CdkDragDrop, moveItemInArray, transferArrayItem } from '@angular/cdk/drag-drop';
import { TodoService } from 'src/app/services/todo.service';
import { error } from '@angular/compiler/src/util';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {


  data = {
    pendings: [],
    inProgress: [],
    done: []
  };

  constructor(
    private todoService: TodoService

  ) { }

  ngOnInit() {
    this.getAllTodos();
    this.setItems();
  }

  drop(event: CdkDragDrop<string[]>) {
    if (event.previousContainer === event.container) {
      moveItemInArray(event.container.data, event.previousIndex, event.currentIndex);
    } else {
      transferArrayItem(event.previousContainer.data,
        event.container.data,
        event.previousIndex,
        event.currentIndex);
      Object.keys(this.data).forEach((key) => {
        localStorage.setItem(key, JSON.stringify(this.data[key]));
      });
    }
    this.updateTodo();
  }

  addTodo(todo) {
    this.data.pendings.push(todo.value);
    const obj = { value: todo.value };
    this.todoService.addTodo(obj)
      .subscribe((res) => {
        console.log(res);
        this.getAllTodos();
        todo.value = '';
        localStorage.setItem('pendings', JSON.stringify(this.data.pendings));
      }
        , err => {
          console.log(err);
        });

  }

  getAllTodos() {
    this.todoService.getAllTodos()
      .subscribe((res) => {
        console.log(res);
        Object.keys(res).forEach((key) => {
          this.data[key] = res[key];
          // console.log(res[key]);
        });

      }, err => {
        console.log(err);
      });
  }

  updateTodo() {
    this.todoService.updateTodo(this.data)
      .subscribe((res) => {
        console.log(res);
      }, (err) => {
        console.log(err);
      });
  }

  removeTodo(id) {
    this.todoService.removeTodo(id)
      .subscribe((res) => {
        console.log(res);
        this.getAllTodos();
      }, (err) => {
        console.log(err);
      });
  }


  setItems() {

    Object.keys(this.data).forEach((key) => {
      if (!localStorage.getItem(key)) {
        localStorage.setItem(key, JSON.stringify(this.data[key]));
      } else {
        this.data[key] = JSON.parse(localStorage.getItem(key));
      }
    });


  }
}
