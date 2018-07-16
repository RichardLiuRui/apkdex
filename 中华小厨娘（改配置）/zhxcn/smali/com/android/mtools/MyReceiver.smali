.class public Lcom/android/mtools/MyReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/android/mtools/q;->d(Landroid/content/Context;)Lcom/android/mtools/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mtools/MyReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, p2, v1, p0}, Lcom/android/mtools/q;->a(Landroid/content/Intent;ILandroid/content/BroadcastReceiver;)Z

    return-void
.end method
