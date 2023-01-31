import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})

export class TodoService {


  constructor(
    @Inject('apiUrl') private apiUrl,
    private http: HttpClient
  ) { }

  addTodo(obj) {
    console.log(obj);
    return this.http.post(this.apiUrl + 'api/todo', obj);
  }

  getAllTodos() {
    console.log(this.http.get(this.apiUrl + 'api/todo'));
    return this.http.get(this.apiUrl);
  }


  updateTodo(obj) {
    console.log(obj);
    return this.http.put(this.apiUrl + 'api/todo', obj);
    // return this.http.put(this.apiUrl, obj);
  }


  removeTodo(id) {
    console.log(id);
    return this.http.delete(this.apiUrl + 'api/todo', id);

    // return this.http.delete(this.apiUrl + '/' + id);
  }
}
