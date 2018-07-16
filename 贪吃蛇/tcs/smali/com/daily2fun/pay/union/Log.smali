.class public Lcom/daily2fun/pay/union/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static LOG:Z = false

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/LogFile"

.field private static final TAG:Ljava/lang/String; = "TheRock"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/daily2fun/pay/union/Log;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/daily2fun/pay/union/Log;->isLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "TheRock"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/daily2fun/pay/union/Log;->isLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "TheRock"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/daily2fun/pay/union/Log;->isLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "TheRock"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {}, Lcom/daily2fun/pay/union/Log;->isLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "TheRock"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/daily2fun/pay/union/Log;->isLogAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "TheRock"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method private static isLogAvailable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 45
    const-string v5, "/LogFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-boolean v3, Lcom/daily2fun/pay/union/Log;->LOG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move v1, v2

    .line 51
    goto :goto_0
.end method
