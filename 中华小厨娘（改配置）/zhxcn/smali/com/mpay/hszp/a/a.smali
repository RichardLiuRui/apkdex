.class public Lcom/mpay/hszp/a/a;
.super Ljava/lang/Object;


# instance fields
.field private apkmd5:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private dexSha1:Ljava/lang/String;

.field private initActivity:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private programID:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private returnCode:I

.field private sdkVersion:Ljava/lang/String;

.field private sfmd5:Ljava/lang/String;

.field private stackMark:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mpay/hszp/a/a;->returnCode:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->sfmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/mpay/hszp/a/a;->versionCode:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->apkmd5:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->dexSha1:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->programID:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->stackMark:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mpay/hszp/a/a;->initActivity:Ljava/lang/String;

    return-object v0
.end method
