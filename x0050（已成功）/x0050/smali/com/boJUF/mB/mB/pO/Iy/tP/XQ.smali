.class final Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:I

.field private synthetic On:I

.field private synthetic TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

.field private synthetic cp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    iput p2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->LA:I

    iput-object p3, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->cp:Ljava/lang/String;

    iput p4, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->On:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const-wide/16 v0, 0x3a98

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->LA:I

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SOID"

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TID"

    iget v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->On:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc1d

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v2}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->cp(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    move-result-object v0

    iget v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->LA:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(II)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Iy/tP/uI;)Lcom/boJUF/mB/mB/pO/Iy/mB/uI;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->cp:Ljava/lang/String;

    iget v2, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->On:I

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boJUF/mB/mB/pO/Iy/mB/uI;->LA(Ljava/lang/String;III)V

    new-instance v0, Lcom/boJUF/mB/mB/pO/mB/jj;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/mB/jj;-><init>()V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/pO/mB/jj;->na(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/Iy/tP/XQ;->TP:Lcom/boJUF/mB/mB/pO/Iy/tP/uI;

    const/4 v2, 0x0

    const/16 v3, 0x837

    invoke-virtual {v1, v0, v2, v3}, Lcom/boJUF/mB/mB/pO/Iy/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/jj;II)V

    :cond_1
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
