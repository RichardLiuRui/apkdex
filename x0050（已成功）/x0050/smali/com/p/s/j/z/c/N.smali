.class public Lcom/p/s/j/z/c/N;
.super Ljava/lang/Object;
.source "N.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field public static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x6e

    .line 11
    sput-boolean v4, Lcom/p/s/j/z/c/N;->isInit:Z

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x6f

    aput-byte v1, v0, v4

    aput-byte v3, v0, v5

    const/16 v1, 0x49

    aput-byte v1, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [B

    const/16 v1, 0x6f

    aput-byte v1, v0, v4

    aput-byte v3, v0, v5

    const/16 v1, 0x49

    aput-byte v1, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/p/s/j/z/c/N;->a:[B

    .line 19
    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/p/s/j/z/c/N;->b:[B

    return-void

    .line 17
    nop

    :array_0
    .array-data 1
        0x6et
        0x6et
        0x5ft
        0x64t
        0x61t
        0x74t
        0x61t
        0x5ft
        0x73t
    .end array-data

    .line 19
    nop

    :array_1
    .array-data 1
        0x70t
        0x61t
        0x72t
        0x61t
        0x6dt
        0x65t
        0x74t
        0x65t
        0x72t
        0x20t
        0x65t
        0x72t
        0x72t
        0x6ft
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lcom/p/s/j/z/c/N;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    .line 69
    :goto_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/p/s/j/z/c/N;->isInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    goto :goto_0
.end method

.method public static call(Landroid/content/Context;[B)[B
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static cmd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmdcge(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/p/s/j/z/c/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmde(Landroid/content/Context;ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmde(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    sget-boolean v1, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v1, :cond_0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmdm(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/p/s/j/z/c/h;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cmdmc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 36
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/ActivityManager;

    .line 38
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 39
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 41
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/N;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    const-class v0, Lcom/p/s/j/z/c/L;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/p/s/j/z/c/N;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/p/s/j/z/c/N;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/p/s/j/z/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/p/s/j/z/c/N;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-instance v0, Lcom/p/s/j/z/c/i;

    invoke-direct {v0}, Lcom/p/s/j/z/c/i;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    .line 60
    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/p/s/j/z/c/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public static pp(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 136
    .line 137
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/p/s/j/z/c/N;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/p/s/j/z/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static uid(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lcom/p/s/j/z/c/N;->isInit:Z

    if-nez v0, :cond_0

    .line 128
    const-wide/16 v0, 0x0

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/p/s/j/z/c/h;->b(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method
