.class final Lcom/android/mtools/v;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic aF:Lcom/android/mtools/q;

.field private final synthetic aO:I

.field private final synthetic aP:Lcom/android/mtools/h;


# direct methods
.method constructor <init>(Lcom/android/mtools/q;ILcom/android/mtools/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/v;->aF:Lcom/android/mtools/q;

    iput p2, p0, Lcom/android/mtools/v;->aO:I

    iput-object p3, p0, Lcom/android/mtools/v;->aP:Lcom/android/mtools/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/android/mtools/v;->aO:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/mtools/v;->sleep(J)V

    iget-object v0, p0, Lcom/android/mtools/v;->aF:Lcom/android/mtools/q;

    iget-object v1, p0, Lcom/android/mtools/v;->aP:Lcom/android/mtools/h;

    invoke-static {v0, v1}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Lcom/android/mtools/h;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mtools/v;->aF:Lcom/android/mtools/q;

    iget-object v2, p0, Lcom/android/mtools/v;->aP:Lcom/android/mtools/h;

    invoke-static {v1, v2}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Lcom/android/mtools/h;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
