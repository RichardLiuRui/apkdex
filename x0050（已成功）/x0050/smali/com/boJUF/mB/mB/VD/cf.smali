.class final Lcom/boJUF/mB/mB/VD/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Ljava/util/HashMap;

.field private synthetic On:Ljava/lang/String;

.field private synthetic TP:Lcom/boJUF/mB/mB/VD/Ke;

.field private synthetic cp:Lcom/boJUF/mB/mB/pO/mB/uI;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;Ljava/util/HashMap;Lcom/boJUF/mB/mB/pO/mB/uI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/cf;->TP:Lcom/boJUF/mB/mB/VD/Ke;

    iput-object p2, p0, Lcom/boJUF/mB/mB/VD/cf;->LA:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/boJUF/mB/mB/VD/cf;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    iput-object p4, p0, Lcom/boJUF/mB/mB/VD/cf;->On:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/cf;->LA:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/cf;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/boJUF/mB/mB/VD/cf;->TP:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v3}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/VD/cf;->TP:Lcom/boJUF/mB/mB/VD/Ke;

    iget-object v2, p0, Lcom/boJUF/mB/mB/VD/cf;->On:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
