.class public final Lcom/boJUF/mB/mB/pO/JO/tP/oC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private LA:Lcom/boJUF/mB/mB/pO/mB/XQ;

.field private synthetic cp:Lcom/boJUF/mB/mB/pO/JO/tP/uI;


# direct methods
.method public constructor <init>(Lcom/boJUF/mB/mB/pO/JO/tP/uI;Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    .locals 1

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/mB/XQ;

    iput-object p2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/mB/XQ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    iget-object v0, v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/JO/mB/uI;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/JO/mB/uI;->cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/JO/tP/oC;->LA:Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-virtual {v1, v2, v0}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/XQ;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
