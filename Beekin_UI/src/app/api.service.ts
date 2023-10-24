import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private apiBaseUrl = 'http://localhost:3000';

  constructor(private http: HttpClient) {}

  getData(): Observable<any> {
    return this.http.get(`${this.apiBaseUrl}/api/fetchCurrentOpeningJobData`);
  }
  submitData(data: any) {
    console.log("came here")
    return this.http.post(`${this.apiBaseUrl}/api/saveApplicantData`, data);
  }
}
