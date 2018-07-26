.class final Lcom/inter/china/fplay/login/Door$2;
.super Ljava/lang/Object;
.source "Door.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/Door;->O00000o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Landroid/content/Context;

.field final synthetic O00000Oo:Ljava/lang/String;

.field final synthetic O00000o0:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/inter/china/fplay/login/Door$2;->O000000o:Landroid/content/Context;

    iput-object p2, p0, Lcom/inter/china/fplay/login/Door$2;->O00000Oo:Ljava/lang/String;

    iput-object p3, p0, Lcom/inter/china/fplay/login/Door$2;->O00000o0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 254
    const-string v0, "initActivity "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/inter/china/fplay/login/Door$2;->O000000o:Landroid/content/Context;

    iget-object v1, p0, Lcom/inter/china/fplay/login/Door$2;->O00000Oo:Ljava/lang/String;

    iget-object v2, p0, Lcom/inter/china/fplay/login/Door$2;->O00000o0:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/inter/china/fplay/login/Door;->O00000Oo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method
