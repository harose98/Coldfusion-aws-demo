component {

    this.name = "ColdFusionAWSDemo";
    this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

}