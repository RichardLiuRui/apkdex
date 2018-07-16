.class final Lcom/android/mtools/x;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic aH:Ljava/lang/String;

.field private synthetic aS:Lcom/android/mtools/MPay;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/x;->aS:Lcom/android/mtools/MPay;

    iput-object p2, p0, Lcom/android/mtools/x;->aH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-wide/32 v0, 0x2bf20

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/mtools/x;->sleep(J)V

    sget-object v0, Lcom/android/mtools/MPay;->helper:Lcom/android/mtools/d;

    iget-object v1, p0, Lcom/android/mtools/x;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->d(Ljava/lang/String;)Lcom/android/mtools/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/f;->y()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPAY"

    const/16 v5, 0x838

    invoke-virtual {v0}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mtools/f;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v7, v0}, Lcom/android/mtools/P;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mtools/x;->aS:Lcom/android/mtools/MPay;

    iget-object v4, v4, Lcom/android/mtools/MPay;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/mtools/P;->a(IIILjava/lang/Object;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
