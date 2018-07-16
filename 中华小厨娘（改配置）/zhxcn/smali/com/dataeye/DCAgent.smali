.class public Lcom/dataeye/DCAgent;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUID()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAgent.getUID() fail , DataEye SDK need init first! \n Maybe you can try to invoke DCAccont.getUid(Context)"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    const-string v0, "DCAgent_getUid"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "DCAgent_getUid"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/dataeye/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setVersion() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/dataeye/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "DCAgent_initConfig"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataEye SDK init error , reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static onKillProcessOrExit()V
    .locals 1

    invoke-static {}, Lcom/dataeye/c/ah;->c()V

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    invoke-virtual {v0}, Lcom/dataeye/c/v;->c()V

    :cond_0
    invoke-static {}, Lcom/dataeye/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/dataeye/c/b;->a(Z)V

    :goto_1
    const-string v0, "DCAgent_onKillProcessOrExit"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dataeye/c/b;->m()V

    goto :goto_1
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dataeye/c/b;->d()V

    new-instance v0, Lcom/dataeye/c/ab;

    invoke-direct {v0, p0}, Lcom/dataeye/c/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dataeye/c/ab;->start()V

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    invoke-virtual {v0}, Lcom/dataeye/c/v;->c()V

    :cond_0
    const-string v0, "DCAgent_onPause"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dataeye/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dataeye/c/b;->a()V

    invoke-static {}, Lcom/dataeye/c/ah;->b()V

    :cond_1
    const-string v0, "DCAgent_onResume"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static openAdTracking()V
    .locals 1

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setDebugMode() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dataeye/c/b;->c:Z

    const-string v0, "DCAgent_openAdTracking"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAgent.reportError() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DESelf_Key_ForBidReportError"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dataeye/DCConfigParams;->getParameterBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataEye SDK Online Config : forbid report error to webserver "

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dataeye/c/ac;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "title"

    invoke-static {p0}, Lcom/dataeye/c/ac;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "content"

    invoke-static {p1}, Lcom/dataeye/c/ac;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "_DESelf_UserDefined_ErrorReport_3"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DCAgent_reportError"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "title"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAgent.reportError() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DESelf_Key_ForBidReportError"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dataeye/DCConfigParams;->getParameterBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataEye SDK Online Config : forbid report error to webserver "

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/dataeye/c/ae;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "_DESelf_UserDefined_ErrorReport_3"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DCAgent_reportError"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setChannelConfig(I)V
    .locals 1
    .param p0, "configFrom"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setChannelConfig() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "isDebug"    # Z

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setDebugMode() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    sput-boolean p0, Lcom/dataeye/c/u;->a:Z

    const-string v0, "DCAgent_setDebugMode"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setReportMode(I)V
    .locals 2
    .param p0, "reportMode"    # I

    .prologue
    const/4 v1, 0x2

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setReportMode() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ne p0, v1, :cond_1

    sput v1, Lcom/dataeye/c/b;->l:I

    :goto_1
    const-string v0, "DCAgent_setReportMode"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/dataeye/c/b;->l:I

    goto :goto_1
.end method

.method public static setUploadInterval(I)V
    .locals 2
    .param p0, "second"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "Invoke DCAgent.setUploadInterval() must before DataEye SDK init"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    const v0, 0xa8c0

    if-lt p0, v0, :cond_2

    :cond_1
    const-string v0, "Warring: Upload Interval must be greater than 30 seconds and less than 12 hours "

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/dataeye/c/b;->r:J

    const-string v0, "DCAgent_setUploadInterval"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/dataeye/c/b;->n:Ljava/lang/String;

    :cond_0
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/dataeye/c/x;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "DCAgent_setVersion"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static uploadNow()V
    .locals 3

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAgent.uploadNow() Ignored,  DataEye SDK need init first"

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCAgent.uploadNow success,  at\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/dataeye/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Z)V

    :cond_1
    :goto_1
    const-string v0, "DCAgent_uploadNow"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dataeye/c/b;->m()V

    goto :goto_1
.end method
