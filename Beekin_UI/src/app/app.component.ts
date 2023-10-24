import { Component, OnInit } from '@angular/core';
import { ApiService } from './api.service';
import { JobformComponent } from './jobform/jobform.component';
import { MatDialog } from '@angular/material/dialog';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  data: any;
  selectedValue :any;
  constructor(private apiService: ApiService,
    public dialog: MatDialog) {}
  title = 'Beekin_UI';
  ngOnInit() {
    this.apiService.getData().subscribe((response) => {
      this.data = response.result;
    });
  }
  applyToJob(id:any){
    const dialogRef = this.dialog.open(JobformComponent, {
      width: '650px',
      data: {id:id} 
  });
  dialogRef.afterClosed().subscribe(result => {
    if (result) {
      //Comparison logic 
      console.log("Ressulr",result)
    }
  });
}
}
