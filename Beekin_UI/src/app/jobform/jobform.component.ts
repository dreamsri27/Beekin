
import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { AppComponent } from '../app.component';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-jobform',
  templateUrl: './jobform.component.html',
  styleUrls: ['./jobform.component.css']
})
export class JobformComponent {
  formJob: FormGroup;
  constructor(
    public dialogRef: MatDialogRef<AppComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private apiService: ApiService,
    private fb: FormBuilder
  ) {
    this.formJob = fb.group({
      name: ['', [Validators.required]],
      education: [''],
      experience: ['', [Validators.required]],
      skills: [''],
      projects: [''],
      mail:[''],
      jobid:data.id,
      cv: [''], 
    });
    
  }

  closeDialog(): void {
    this.dialogRef.close();
  }
  submitForm(): void {
    if (this.formJob.valid) {
      const formData = this.formJob.value;
      this.dialogRef.close("done");
    }

  }
}
