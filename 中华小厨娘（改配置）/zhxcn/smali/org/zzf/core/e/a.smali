.class public Lorg/zzf/core/e/a;
.super Ljava/lang/Object;


# static fields
.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lorg/zzf/core/d/g;

.field private c:Lorg/zzf/core/d/s;

.field private d:Lorg/zzf/core/d/v;

.field private e:Lorg/zzf/core/d/p;

.field private f:Lorg/zzf/core/d/m;

.field private g:Lorg/zzf/core/d/z;

.field private h:Lorg/zzf/core/d/j;

.field private i:Lorg/zzf/core/d/b;

.field private j:Lorg/zzf/core/d/d;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private o:Lorg/zzf/core/zdx/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string v0, "Zpay"

    const-string v1, "START_DOCUMENT"

    invoke-static {v0, v1}, Lorg/zzf/core/f/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->a:Ljava/util/List;

    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/16 v3, 0xa

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string v1, "root"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_pc1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_pc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_mm1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_mm1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_wo1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_wo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_mux"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_mux"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "gateway"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_wo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_wo1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_xy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_xy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_wo1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_sig2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_sig2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_sig3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_sig3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_pcjf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_pcjf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_sig4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_sig4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "mutual_sig5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "procedure_sig5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    :goto_0
    :try_start_0
    const-string v0, "order_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->i(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fee_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->c(Landroid/content/Context;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const-string v0, "call_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    const-string v0, "call_max"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    const-string v0, "fee"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "prod_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "supp_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "view_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sput-object v1, Lorg/zzf/core/ui/FeeView;->f:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v0, "second_port_ok"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "gateway"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object v1, p0, Lorg/zzf/core/e/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v0, "load_times"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_c

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->k(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "fee_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lorg/zzf/core/d/h;

    invoke-direct {v0}, Lorg/zzf/core/d/h;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/zzf/core/b/h;->z(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/zzf/core/b/h;->E(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/x;

    invoke-direct {v0}, Lorg/zzf/core/d/x;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->a(Z)V

    goto/16 :goto_1

    :cond_e
    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v3, "7"

    invoke-virtual {v1, v2, v3}, Lorg/zzf/core/b/h;->F(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/x;

    invoke-direct {v0}, Lorg/zzf/core/d/x;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->a(Z)V

    goto/16 :goto_1

    :cond_f
    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string v1, "13"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->G(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/r;

    invoke-direct {v0}, Lorg/zzf/core/d/r;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_11
    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->H(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/u;

    invoke-direct {v0}, Lorg/zzf/core/d/u;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_12
    const-string v2, "28"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v1, "28"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "16"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->I(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/l;

    invoke-direct {v0}, Lorg/zzf/core/d/l;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_13
    const-string v2, "18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "18"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "18"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->J(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string v2, "19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "19"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->K(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/o;

    invoke-direct {v0}, Lorg/zzf/core/d/o;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_15
    const-string v2, "21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v1, "21"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "16"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->I(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/y;

    invoke-direct {v0}, Lorg/zzf/core/d/y;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_16
    const-string v2, "25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v1, "25"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "25"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->S(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/i;

    invoke-direct {v0}, Lorg/zzf/core/d/i;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_17
    const-string v2, "26"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->G(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/a;

    invoke-direct {v0}, Lorg/zzf/core/d/a;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_18
    const-string v2, "27"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "27"

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->G(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/d/c;

    invoke-direct {v0}, Lorg/zzf/core/d/c;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_19
    new-instance v0, Lorg/zzf/core/d/t;

    invoke-direct {v0}, Lorg/zzf/core/d/t;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    goto/16 :goto_1

    :cond_1a
    const-string v0, "is_pop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->d(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_1b
    const-string v0, "cmd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1c
    const-string v0, "port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    const-string v0, "is_filter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/g;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    const-string v0, "is_second"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->b(I)V

    goto/16 :goto_1

    :cond_1f
    const-string v0, "filter_port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/zzf/core/b/h;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lorg/zzf/core/b/h;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->x(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    sput-object v1, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/g;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_22
    const-string v0, "second_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/zzf/core/b/h;->D(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_23
    const-string v0, "filter_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    sput-object v1, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/g;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    const-string v0, "third_begin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sput-object v1, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->Q(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_25
    const-string v0, "third_end"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sput-object v1, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->R(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_26
    const-string v0, "second_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->y(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->c(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_27
    :try_start_3
    const-string v0, "second_port"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_28
    const-string v0, "reply_start_str"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->v(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    const-string v0, "reply_end_str"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/b/h;->w(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->h(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2a
    const-string v0, "reply_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2b
    const-string v0, "charge_count"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->d(I)V

    goto/16 :goto_1

    :cond_2c
    const-string v0, "sms_delay_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/x;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/x;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/x;->e(I)V

    goto/16 :goto_1

    :cond_2d
    const-string v0, "mutual_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lorg/zzf/core/d/p;

    invoke-direct {v0}, Lorg/zzf/core/d/p;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    goto/16 :goto_1

    :cond_2e
    const-string v0, "a_url_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/p;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    const-string v0, "type_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/p;->b(I)V

    goto/16 :goto_1

    :cond_30
    const-string v0, "sms_num_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/p;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_31
    const-string v0, "timer_mux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/p;->a(I)V

    goto/16 :goto_1

    :cond_32
    const-string v0, "mutual"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/zzf/core/d/s;

    invoke-direct {v0}, Lorg/zzf/core/d/s;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    goto/16 :goto_1

    :cond_33
    const-string v0, "a_url_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/s;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_34
    const-string v0, "timer_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/s;->a(I)V

    goto/16 :goto_1

    :cond_35
    const-string v0, "type_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/s;->b(I)V

    goto/16 :goto_1

    :cond_36
    const-string v0, "sms_num_1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/s;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_37
    const-string v0, "mutual_mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_mm1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lorg/zzf/core/d/m;

    invoke-direct {v0}, Lorg/zzf/core/d/m;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    goto/16 :goto_1

    :cond_38
    const-string v0, "a_url_mm1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_39
    const-string v0, "type_mm1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/m;->b(I)V

    goto/16 :goto_1

    :cond_3a
    const-string v0, "sms_num_mm1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/m;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3b
    const-string v0, "timer_mm1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/m;->a(I)V

    goto/16 :goto_1

    :cond_3c
    const-string v0, "mutual_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lorg/zzf/core/d/z;

    invoke-direct {v0}, Lorg/zzf/core/d/z;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    goto/16 :goto_1

    :cond_3d
    const-string v0, "a_url_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/z;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3e
    const-string v0, "type_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/z;->b(I)V

    goto/16 :goto_1

    :cond_3f
    const-string v0, "sms_num_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/z;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_40
    const-string v0, "timer_xy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/z;->a(I)V

    goto/16 :goto_1

    :cond_41
    const-string v0, "mutual_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lorg/zzf/core/d/j;

    invoke-direct {v0}, Lorg/zzf/core/d/j;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    goto/16 :goto_1

    :cond_42
    const-string v0, "a_url_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/j;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_43
    const-string v0, "type_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/j;->b(I)V

    goto/16 :goto_1

    :cond_44
    const-string v0, "sms_num_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/j;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_45
    const-string v0, "timer_pcjf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/j;->a(I)V

    goto/16 :goto_1

    :cond_46
    const-string v0, "mutual_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lorg/zzf/core/d/b;

    invoke-direct {v0}, Lorg/zzf/core/d/b;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    goto/16 :goto_1

    :cond_47
    const-string v0, "a_url_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_48
    const-string v0, "type_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/b;->b(I)V

    goto/16 :goto_1

    :cond_49
    const-string v0, "sms_num_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4a
    const-string v0, "timer_sig4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/b;->a(I)V

    goto/16 :goto_1

    :cond_4b
    const-string v0, "mutual_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lorg/zzf/core/d/d;

    invoke-direct {v0}, Lorg/zzf/core/d/d;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    goto/16 :goto_1

    :cond_4c
    const-string v0, "a_url_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/d;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4d
    const-string v0, "type_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/d;->b(I)V

    goto/16 :goto_1

    :cond_4e
    const-string v0, "sms_num_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/d;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4f
    const-string v0, "timer_sig5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/d;->a(I)V

    goto/16 :goto_1

    :cond_50
    const-string v0, "mutual_pc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "procedure_pc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lorg/zzf/core/d/v;

    invoke-direct {v0}, Lorg/zzf/core/d/v;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    goto/16 :goto_1

    :cond_51
    const-string v0, "a_url_pc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/v;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_52
    const-string v0, "timer_pc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/v;->a(I)V

    goto/16 :goto_1

    :cond_53
    const-string v0, "type_pc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/v;->b(I)V

    goto/16 :goto_1

    :cond_54
    const-string v0, "sms_num_pc1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    invoke-virtual {v0, v1}, Lorg/zzf/core/d/v;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_55
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gateway"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/zzf/core/e/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->a:Ljava/util/List;

    iget-object v1, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "procedure_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/t;

    invoke-virtual {v0}, Lorg/zzf/core/d/t;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->c:Lorg/zzf/core/d/s;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "procedure_pc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/w;

    invoke-virtual {v0}, Lorg/zzf/core/d/w;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->d:Lorg/zzf/core/d/v;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "procedure_mux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/q;

    invoke-virtual {v0}, Lorg/zzf/core/d/q;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->e:Lorg/zzf/core/d/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "procedure_mm1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/n;

    invoke-virtual {v0}, Lorg/zzf/core/d/n;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->f:Lorg/zzf/core/d/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "procedure_xy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/aa;

    invoke-virtual {v0}, Lorg/zzf/core/d/aa;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->g:Lorg/zzf/core/d/z;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "procedure_pcjf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/k;

    invoke-virtual {v0}, Lorg/zzf/core/d/k;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->h:Lorg/zzf/core/d/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-string v1, "procedure_sig4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/f;

    invoke-virtual {v0}, Lorg/zzf/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->i:Lorg/zzf/core/d/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v1, "procedure_sig5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    instance-of v0, v0, Lorg/zzf/core/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/e/a;->b:Lorg/zzf/core/d/g;

    check-cast v0, Lorg/zzf/core/d/e;

    invoke-virtual {v0}, Lorg/zzf/core/d/e;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/e/a;->j:Lorg/zzf/core/d/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/io/StringReader;Landroid/content/Context;)Ljava/util/List;
    .locals 8

    const-wide/16 v6, -0x2

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput-object p2, p0, Lorg/zzf/core/e/a;->k:Landroid/content/Context;

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lorg/zzf/core/e/a;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_2
    new-instance v0, Lorg/zzf/core/zdx/a/a;

    invoke-direct {v0, p2}, Lorg/zzf/core/zdx/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/e/a;->o:Lorg/zzf/core/zdx/a/a;

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v4, :cond_3

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    sget-object v2, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/zzf/core/e/a;->o:Lorg/zzf/core/zdx/a/a;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;I)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    :cond_0
    :goto_3
    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v4, :cond_4

    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    sget-object v2, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/zzf/core/zdx/b/b;->a()Lorg/zzf/core/zdx/b/b;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v1, v0}, Lorg/zzf/core/zdx/b/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    :cond_1
    :goto_4
    sget-object v0, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    new-array v0, v1, [Ljava/lang/String;

    sget-object v0, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v4, :cond_5

    sget-object v0, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    const-string v2, "\\#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    invoke-static {}, Lorg/zzf/core/zdx/b/b;->a()Lorg/zzf/core/zdx/b/b;

    move-result-object v4

    invoke-virtual {v4, p2, v5, v1, v3}, Lorg/zzf/core/zdx/b/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_2
    :try_start_1
    invoke-direct {p0, v2}, Lorg/zzf/core/e/a;->b(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_3
    :try_start_2
    invoke-direct {p0, v2}, Lorg/zzf/core/e/a;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lorg/zzf/core/e/a;->o:Lorg/zzf/core/zdx/a/a;

    sget-object v2, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;I)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_4
    sget-object v0, Lorg/zzf/core/e/a;->m:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/zzf/core/zdx/b/b;->a()Lorg/zzf/core/zdx/b/b;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v1, v0}, Lorg/zzf/core/zdx/b/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lorg/zzf/core/zdx/b/b;->a()Lorg/zzf/core/zdx/b/b;

    move-result-object v0

    sget-object v2, Lorg/zzf/core/e/a;->n:Ljava/lang/String;

    invoke-virtual {v0, p2, v5, v1, v2}, Lorg/zzf/core/zdx/b/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/zzf/core/e/a;->a:Ljava/util/List;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
