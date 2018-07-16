.class final Lcom/android/mtools/s;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic aF:Lcom/android/mtools/q;

.field private final synthetic aG:I

.field private final synthetic aH:Ljava/lang/String;

.field private final synthetic aI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mtools/q;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/s;->aF:Lcom/android/mtools/q;

    iput p2, p0, Lcom/android/mtools/s;->aG:I

    iput-object p3, p0, Lcom/android/mtools/s;->aH:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mtools/s;->aI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/mtools/s;->sleep(J)V

    iget-object v0, p0, Lcom/android/mtools/s;->aF:Lcom/android/mtools/q;

    iget-object v0, v0, Lcom/android/mtools/q;->helper:Lcom/android/mtools/d;

    iget v1, p0, Lcom/android/mtools/s;->aG:I

    iget-object v2, p0, Lcom/android/mtools/s;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mtools/d;->a(I)Lcom/android/mtools/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mtools/h;->u()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mtools/s;->aF:Lcom/android/mtools/q;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/mtools/s;->aI:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Lcom/android/mtools/h;ILjava/lang/String;)V
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
