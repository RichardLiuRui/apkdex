.class public final Lcom/android/mtools/O;
.super Landroid/database/ContentObserver;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/mtools/N;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/mtools/O;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    invoke-static {}, Lcom/android/mtools/P;->V()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mtools/O;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mtools/MPService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "getSmss"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mtools/O;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
