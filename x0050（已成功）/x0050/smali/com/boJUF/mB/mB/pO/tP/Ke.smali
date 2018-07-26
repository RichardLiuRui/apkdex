.class final Lcom/boJUF/mB/mB/pO/tP/Ke;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic LA:Ljava/util/Map;

.field private synthetic On:Landroid/content/Context;

.field private synthetic TP:Ljava/util/ArrayList;

.field private synthetic cp:Lcom/boJUF/mB/mB/pO/mB/uI;

.field private synthetic na:Lcom/boJUF/mB/mB/Xd/uI;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;Landroid/content/Context;Ljava/util/ArrayList;Lcom/boJUF/mB/mB/Xd/uI;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->LA:Ljava/util/Map;

    iput-object p2, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    iput-object p3, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->On:Landroid/content/Context;

    iput-object p4, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->TP:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->na:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->LA:Ljava/util/Map;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->On:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->TP:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boJUF/mB/mB/pO/tP/Ke;->na:Lcom/boJUF/mB/mB/Xd/uI;

    invoke-static {v0, v1, v2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(Ljava/lang/String;Ljava/util/ArrayList;Lcom/boJUF/mB/mB/Xd/uI;)V

    return-void
.end method
