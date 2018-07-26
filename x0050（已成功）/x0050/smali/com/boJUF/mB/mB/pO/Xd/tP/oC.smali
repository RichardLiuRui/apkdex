.class public final Lcom/boJUF/mB/mB/pO/Xd/tP/oC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private LA:I

.field private synthetic cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;


# direct methods
.method public constructor <init>(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;I)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->LA:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    invoke-static {v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;)Lcom/boJUF/mB/mB/pO/Xd/mB/uI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/Xd/mB/uI;->cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/Vr;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/boJUF/mB/mB/tP/uI;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;)V

    :cond_1
    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/boJUF/mB/mB/tP/uI;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    iget v3, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->LA:I

    invoke-virtual {v2, v0, v3}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/Vr;I)V

    :cond_2
    invoke-virtual {v0}, Lcom/boJUF/mB/mB/pO/mB/Vr;->oC()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/boJUF/mB/mB/tP/uI;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/Xd/tP/oC;->cp:Lcom/boJUF/mB/mB/pO/Xd/tP/uI;

    invoke-static {v2, v0}, Lcom/boJUF/mB/mB/pO/Xd/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/Xd/tP/uI;Lcom/boJUF/mB/mB/pO/mB/Vr;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/boJUF/mB/mB/tP/uI;->i:Ljava/lang/String;

    :cond_4
    return-void
.end method
