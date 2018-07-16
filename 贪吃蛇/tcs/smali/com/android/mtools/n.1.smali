.class public final Lcom/android/mtools/n;
.super Ljava/lang/Object;


# static fields
.field static ae:Lcom/android/mtools/MPDialog;


# instance fields
.field private X:Landroid/content/Context;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private ac:Z

.field private ad:Ljava/lang/String;

.field private af:Landroid/widget/EditText;

.field private ag:[Ljava/lang/String;

.field private ah:Landroid/content/DialogInterface$OnClickListener;

.field private ai:Landroid/content/DialogInterface$OnClickListener;

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Landroid/content/DialogInterface$OnClickListener;

.field private ap:Landroid/content/DialogInterface$OnClickListener;

.field private aq:Landroid/content/DialogInterface$OnClickListener;

.field private ar:Landroid/content/DialogInterface$OnClickListener;

.field private as:Landroid/content/DialogInterface$OnClickListener;

.field private at:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/mtools/n;->ac:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mtools/n;->ad:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mp_alipay"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "mp_upay"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mp_wx"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mp_yl"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mtools/n;->ag:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/mtools/n;->aj:Z

    iput-boolean v3, p0, Lcom/android/mtools/n;->ak:Z

    iput-boolean v3, p0, Lcom/android/mtools/n;->al:Z

    iput-boolean v3, p0, Lcom/android/mtools/n;->am:Z

    iput-boolean v3, p0, Lcom/android/mtools/n;->an:Z

    iput-object p1, p0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->ai:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/view/View;IIIIIIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 11

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    new-instance v0, Lcom/android/mtools/p;

    move-object v1, p0

    move-object/from16 v2, p9

    move-object v3, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/mtools/p;-><init>(Lcom/android/mtools/n;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;IIIIII)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->ao:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->ap:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->aq:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->ar:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->as:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic g(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mtools/n;->at:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/android/mtools/n;
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/n;->Z:Ljava/lang/String;

    return-object p0
.end method

.method public final B(Ljava/lang/String;)Lcom/android/mtools/n;
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/n;->Y:Ljava/lang/String;

    return-object p0
.end method

.method public final S()Lcom/android/mtools/n;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->ac:Z

    return-object p0
.end method

.method public final T()Lcom/android/mtools/MPDialog;
    .locals 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mtools/n;->ag:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mtools/n;->ag:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mtools/n;->ag:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mtools/n;->ag:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "mp_dialog"

    const-string v5, "layout"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "title"

    const-string v6, "id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "textMsg"

    const-string v6, "id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "cancelBtn"

    const-string v6, "id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "btn1"

    const-string v6, "id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "btn2"

    const-string v7, "id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "icon"

    const-string v7, "id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "editText"

    const-string v7, "id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "pBar"

    const-string v7, "id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "rGroup"

    const-string v7, "id"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "rbtn0"

    const-string v8, "id"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v8, "rbtn1"

    const-string v9, "id"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "rbtn2"

    const-string v10, "id"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v10, "rbtn3"

    const-string v11, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v10, v11, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v11, "rbtn4"

    const-string v18, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v11, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v18, "mp_radio"

    const-string v19, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    const-string v18, "layout_inflater"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    new-instance v18, Lcom/android/mtools/MPDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/mtools/MPDialog;-><init>(Landroid/content/Context;)V

    sput-object v18, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mtools/MPDialog;->requestWindowFeature(I)Z

    sget-object v18, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mtools/n;->ab:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mtools/MPDialog;->setCancelable(Z)V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget-object v3, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/mtools/MPDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->Y:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->Z:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->ac:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v12, "content"

    const-string v17, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mtools/n;->X:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v12, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->aj:Z

    if-nez v3, :cond_0

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->ak:Z

    if-nez v3, :cond_1

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->al:Z

    if-nez v3, :cond_2

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->am:Z

    if-nez v3, :cond_3

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->an:Z

    if-nez v3, :cond_4

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->Z:Ljava/lang/String;

    if-eqz v3, :cond_7

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->Z:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mtools/n;->af:Landroid/widget/EditText;

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->ad:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->af:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->ad:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->aa:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->aa:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->ah:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mtools/n;->ah:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/mtools/n;->a(Landroid/view/View;IIIIIIILandroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    :goto_3
    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->ai:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_c

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/mtools/o;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mtools/o;-><init>(Lcom/android/mtools/n;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    sget-object v3, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    invoke-virtual {v3, v4}, Lcom/android/mtools/MPDialog;->setContentView(Landroid/view/View;)V

    sget-object v3, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    return-object v3

    :cond_6
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mtools/n;->af:Landroid/widget/EditText;

    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->aj:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->ak:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->al:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->am:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mtools/n;->an:Z

    if-eqz v3, :cond_5

    :cond_a
    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/mtools/n;->a(Landroid/view/View;IIIIIIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/n;->ai:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/n;->aa:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mtools/n;->ah:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final a(Z)Lcom/android/mtools/n;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mtools/n;->ab:Z

    return-object p0
.end method

.method public final b(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->aj:Z

    iput-object p1, p0, Lcom/android/mtools/n;->ao:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public final c(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 1

    iput-object p1, p0, Lcom/android/mtools/n;->ap:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->ak:Z

    return-object p0
.end method

.method public final d(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 1

    iput-object p1, p0, Lcom/android/mtools/n;->aq:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->al:Z

    return-object p0
.end method

.method public final e(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 1

    iput-object p1, p0, Lcom/android/mtools/n;->ar:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->am:Z

    return-object p0
.end method

.method public final f(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 1

    iput-object p1, p0, Lcom/android/mtools/n;->as:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mtools/n;->an:Z

    return-object p0
.end method

.method public final g(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/mtools/n;
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/n;->at:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
