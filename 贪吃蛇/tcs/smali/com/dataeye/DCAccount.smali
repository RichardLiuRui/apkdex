.class public Lcom/dataeye/DCAccount;
.super Ljava/lang/Object;


# static fields
.field public static final DESelf_Event_Key_AccountId:Ljava/lang/String; = "_DES_AccountId"

.field public static final DESelf_Event_Key_LoginTime:Ljava/lang/String; = "_DES_LoginTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subTag"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_1

    const-string v0, "Invoke DCAccount.tag() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "subTag"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "_DESelf_addTag"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DCAccount_tag"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "DCAgent_getAccountId"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/dataeye/c/a;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Invoke DCAccount.getAccountId() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public static login(Ljava/lang/String;)V
    .locals 1
    .param p0, "accountId"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/dataeye/DCAccount;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "accountId"    # Ljava/lang/String;
    .param p1, "gameServer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.login() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/dataeye/c/b;->l:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invoke DCAccount.login() Ignored, because ReportMode is DEFAULT , please invoke "

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "login"

    const-string v1, "loginWithAccountId"

    const-string v2, "warning"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ReportMode=AFTER_MODE, accountId=null , so accountId=Uid"

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/dataeye/c/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/dataeye/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dataeye/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "_DESelf_DEFAULT_ACCOUNTID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    sget-wide v1, Lcom/dataeye/c/b;->f:J

    invoke-static {v0, v1, v2}, Lcom/dataeye/c/b;->b(Lcom/dataeye/a/a;J)V

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/dataeye/c/a;->m:Lcom/dataeye/c/v;

    invoke-virtual {v0}, Lcom/dataeye/c/v;->c()V

    :cond_3
    invoke-static {}, Lcom/dataeye/c/b;->c()V

    invoke-static {p0, p1}, Lcom/dataeye/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCAccount.login() success, accountid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    :goto_1
    const-string v0, "DCAccount_login"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    const-string v0, "_DESelf_Account_Login"

    invoke-static {}, Lcom/dataeye/c/b;->f()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "_DES_AccountId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "_DES_LoginTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v6}, Lcom/dataeye/c/b;->a(Z)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCAccount.login() warring, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " repeat login "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/dataeye/c/b;->c()V

    invoke-static {p0, p1}, Lcom/dataeye/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoke DCAccount.login() success, accountid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static logout()V
    .locals 3

    sget v0, Lcom/dataeye/c/b;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Invoke DCAccount.logout() Ignored, because ReportMode is DEFAULT"

    invoke-static {v0}, Lcom/dataeye/c/u;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dataeye/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    sget-wide v1, Lcom/dataeye/c/b;->f:J

    invoke-static {v0, v1, v2}, Lcom/dataeye/c/b;->b(Lcom/dataeye/a/a;J)V

    invoke-static {}, Lcom/dataeye/c/a;->i()V

    :cond_1
    const-string v0, "DCAccount_logout"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subTag"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_1

    const-string v0, "Invoke DCAccount.unTag() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "subTag"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "_DESelf_removeTag"

    invoke-static {v1, v0}, Lcom/dataeye/DCEvent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DCAccount_unTag"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAccountType(I)V
    .locals 1
    .param p0, "accountType"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.setAccountType() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/dataeye/c/a;->b(I)V

    const-string v0, "DCAccount_setAccountType"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 1
    .param p0, "age"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.setAge() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/dataeye/c/a;->d(I)V

    const-string v0, "DCAccount_setAge"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setGameServer(Ljava/lang/String;)V
    .locals 1
    .param p0, "gameServer"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.setGameServer() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Invoke DCAccount.setGameServer() fail , gameServer is empty!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/dataeye/c/a;->b(Ljava/lang/String;)V

    const-string v0, "DCAccount_setGameServer"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setGender(I)V
    .locals 1
    .param p0, "gender"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.setGender() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/dataeye/c/a;->c(I)V

    const-string v0, "DCAccount_setGender"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLevel(I)V
    .locals 7
    .param p0, "level"    # I

    .prologue
    sget-boolean v0, Lcom/dataeye/c/b;->d:Z

    if-nez v0, :cond_0

    const-string v0, "Invoke DCAccount.setLevel() fail , DataEye SDK need init first!"

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    iget v0, v0, Lcom/dataeye/a/a;->g:I

    if-ne v0, p0, :cond_1

    const-string v0, "Invoke DCAccount.setLevel() fail ,same level set again! "

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-le v0, p0, :cond_2

    const-string v0, "Invoke DCAccount.setLevel() fail ,new level is less than the current level! "

    invoke-static {v0}, Lcom/dataeye/c/u;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/dataeye/c/b;->b(I)J

    move-result-wide v1

    if-lez v0, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "endLevel"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "spendTimeInLevel"

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_DESelf_Level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/dataeye/DCEvent;->onEventEnd(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dataeye/c/b;->a(I)V

    :cond_3
    if-lez p0, :cond_4

    invoke-static {p0}, Lcom/dataeye/c/a;->e(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "startLevel"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_DESelf_Level"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dataeye/DCEvent;->onEventBegin(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dataeye/c/b;->c(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dataeye/c/b;->a(Z)V

    :cond_4
    const-string v0, "DCAccount_setLevel"

    invoke-static {v0}, Lcom/dataeye/c/t;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
