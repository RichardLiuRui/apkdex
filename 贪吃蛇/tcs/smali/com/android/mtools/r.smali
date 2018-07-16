.class final Lcom/android/mtools/r;
.super Landroid/os/Handler;


# instance fields
.field private synthetic aF:Lcom/android/mtools/q;


# direct methods
.method constructor <init>(Lcom/android/mtools/q;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/r;->aF:Lcom/android/mtools/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mtools/r;->aF:Lcom/android/mtools/q;

    invoke-static {v1, v0}, Lcom/android/mtools/q;->a(Lcom/android/mtools/q;Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mtools/r;->aF:Lcom/android/mtools/q;

    invoke-static {v1, v0}, Lcom/android/mtools/q;->b(Lcom/android/mtools/q;Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
