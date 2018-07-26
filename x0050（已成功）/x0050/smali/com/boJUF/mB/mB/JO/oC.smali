.class final Lcom/boJUF/mB/mB/JO/oC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Ljava/util/Map;

.field private synthetic On:Landroid/content/Context;

.field private synthetic TP:Lcom/boJUF/mB/mB/JO/uI;

.field private synthetic cp:Lcom/boJUF/mB/mB/pO/mB/uI;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/JO/uI;Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/JO/oC;->TP:Lcom/boJUF/mB/mB/JO/uI;

    iput-object p2, p0, Lcom/boJUF/mB/mB/JO/oC;->LA:Ljava/util/Map;

    iput-object p3, p0, Lcom/boJUF/mB/mB/JO/oC;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    iput-object p4, p0, Lcom/boJUF/mB/mB/JO/oC;->On:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/boJUF/mB/mB/JO/oC;->LA:Ljava/util/Map;

    iget-object v1, p0, Lcom/boJUF/mB/mB/JO/oC;->cp:Lcom/boJUF/mB/mB/pO/mB/uI;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/boJUF/mB/mB/JO/oC;->On:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boJUF/mB/mB/JO/oC;->TP:Lcom/boJUF/mB/mB/JO/uI;

    iget-object v2, p0, Lcom/boJUF/mB/mB/JO/oC;->On:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/boJUF/mB/mB/JO/uI;->LA(Lcom/boJUF/mB/mB/JO/uI;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
