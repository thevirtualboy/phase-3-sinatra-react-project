class PatientController < ApplicationController

    get '/patients' do 
        patients = Patient.all
        patients.to_json
     end

     get '/patients/:id' do
        patient = Patient.find(params[:id])
        patient.to_json
    end

    post '/patients' do 
        Patient.create(first_name: params[:first_name], last_name: params[:last_name] , patient_history: params[:patient_history], doctor_id: params[:doctor_id]).to_json
    end  

    patch '/patients/:id' do 
        patient = Patient.find(params[:id])
        patient.update(first_name: params[:first_name], last_name: params[:last_name] , patient_history: params[:patient_history], doctor_id: params[:doctor_id])
        patient.to_json
    end

    delete '/patients/:id' do
        patient = Patient.find(params[:id])
        patient.destroy
    end

 end
