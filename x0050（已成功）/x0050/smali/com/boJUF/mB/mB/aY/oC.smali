.class public final Lcom/boJUF/mB/mB/aY/oC;
.super Ljava/lang/Object;


# instance fields
.field private LA:Landroid/app/AlertDialog;

.field private cp:Lcom/boJUF/mB/mB/aY/jj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/aY/oC;Z)V
    .locals 2

    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/oC;->LA:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/oC;->cp:Lcom/boJUF/mB/mB/aY/jj;

    iget-object v1, p0, Lcom/boJUF/mB/mB/aY/oC;->LA:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/boJUF/mB/mB/aY/jj;->cp(Landroid/app/AlertDialog;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boJUF/mB/mB/aY/oC;->LA:Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/boJUF/mB/mB/aY/oC;->cp:Lcom/boJUF/mB/mB/aY/jj;

    iget-object v1, p0, Lcom/boJUF/mB/mB/aY/oC;->LA:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Lcom/boJUF/mB/mB/aY/jj;->LA(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method


# virtual methods
.method public final LA(Landroid/app/Activity;Ljava/lang/String;ILcom/boJUF/mB/mB/aY/jj;)V
    .locals 10

    const/16 v9, 0x21

    const/4 v8, 0x2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/boJUF/mB/mB/aY/uI;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lcom/boJUF/mB/mB/aY/uI;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne p3, v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "MEEyNjZEN0U0OUIwMTM3NEY1Q0RGMkRENDU3MDE1QzE1MjI3MzM5MjdGMTY3MjZEMkRDMTc2QzEwMTY4RjlCMTFDOUYxNkM3QTFDNjQ4RkI3MjhBREJBQjEyOUFENzlCRTAyODNCNTNBOEMwRkU3QjQ3QzYyRTI1NDVDNkVBMkE="

    const-string v5, "dialog"

    invoke-static {v4, v5}, Lcom/boJUF/mB/mB/mB/uI;->TP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x26

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v4, v5, v6, v7, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-ne p3, v8, :cond_0

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v4, v5, v1, v0, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v3, v4}, Lcom/boJUF/mB/mB/aY/uI;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    packed-switch p3, :pswitch_data_0

    :goto_1
    iput-object p4, p0, Lcom/boJUF/mB/mB/aY/oC;->cp:Lcom/boJUF/mB/mB/aY/jj;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/boJUF/mB/mB/aY/oC;->LA:Landroid/app/AlertDialog;

    return-void

    :pswitch_0
    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/boJUF/mB/mB/aY/ac;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/aY/ac;-><init>(Lcom/boJUF/mB/mB/aY/oC;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/boJUF/mB/mB/aY/XQ;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/aY/XQ;-><init>(Lcom/boJUF/mB/mB/aY/oC;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_1
    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/boJUF/mB/mB/aY/tQ;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/aY/tQ;-><init>(Lcom/boJUF/mB/mB/aY/oC;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/boJUF/mB/mB/aY/Ke;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/aY/Ke;-><init>(Lcom/boJUF/mB/mB/aY/oC;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_2
    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/boJUF/mB/mB/aY/Ut;

    invoke-direct {v1, p0}, Lcom/boJUF/mB/mB/aY/Ut;-><init>(Lcom/boJUF/mB/mB/aY/oC;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
