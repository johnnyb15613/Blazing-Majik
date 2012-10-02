.class public Lcom/google/android/finsky/activities/ReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_MAP:[I


# instance fields
.field mCommentView:Landroid/widget/TextView;

.field mEmptyTextWatcher:Landroid/text/TextWatcher;

.field mRatingBar:Landroid/widget/RatingBar;

.field mReviewMode:I

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x78t 0x1t 0x7t 0x7ft
        0x79t 0x1t 0x7t 0x7ft
        0x7at 0x1t 0x7t 0x7ft
        0x7bt 0x1t 0x7t 0x7ft
        0x7ct 0x1t 0x7t 0x7ft
        0x7dt 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/finsky/activities/ReviewDialog;->DESCRIPTION_MAP:[I

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 235
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_0

    .line 236
    check-cast v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .line 242
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 238
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 239
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_1

    .line 240
    check-cast v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 242
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserRating()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getUserTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/activities/ReviewDialog;
    .locals 4
    .parameter "reviewMode"
    .parameter "docId"
    .parameter "previousReview"

    .prologue
    .line 89
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewDialog;-><init>()V

    .line 90
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/ReviewDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "review_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const-string v2, "previous_rating"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getStarRating()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v2, "previous_title"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "previous_comment"

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewDialog;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v1
.end method

.method private syncOkButtonState()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v6

    if-lez v6, :cond_2

    move v2, v4

    .line 203
    .local v2, enabled:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 205
    .local v3, titleEmpty:Z
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 206
    .local v0, commentEmpty:Z
    iget v6, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 207
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    move v2, v4

    .line 213
    .end local v0           #commentEmpty:Z
    .end local v3           #titleEmpty:Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 214
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_1

    .line 215
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :cond_1
    return-void

    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #enabled:Z
    :cond_2
    move v2, v5

    .line 202
    goto :goto_0

    .restart local v0       #commentEmpty:Z
    .restart local v2       #enabled:Z
    .restart local v3       #titleEmpty:Z
    :cond_3
    move v2, v5

    .line 207
    goto :goto_1

    .line 210
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v4

    :goto_2
    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 106
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, arguments:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 108
    .local v6, previousRating:I
    const/4 v7, 0x0

    .line 109
    .local v7, previousTitle:Ljava/lang/String;
    const/4 v5, 0x0

    .line 110
    .local v5, previousComment:Ljava/lang/String;
    const-string v11, "review_mode"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    .line 111
    const-string v11, "doc_id"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, docId:Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object v10, p1

    .line 116
    .local v10, source:Landroid/os/Bundle;
    :goto_0
    const-string v11, "previous_rating"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 117
    const-string v11, "previous_title"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    const-string v11, "previous_comment"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 126
    .local v4, inflationContext:Landroid/content/Context;
    :goto_1
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0400f3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 128
    .local v9, ratingSetterFrame:Landroid/view/View;
    const v11, 0x7f0801e7

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RatingBar;

    iput-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    .line 129
    const v11, 0x7f0801e8

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 131
    .local v8, ratingDescription:Landroid/widget/TextView;
    const v11, 0x7f0801e9

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    .line 132
    const v11, 0x7f0801ea

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    .line 133
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    int-to-float v12, v6

    invoke-virtual {v11, v12}, Landroid/widget/RatingBar;->setRating(F)V

    .line 134
    iget v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 135
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_2
    const v11, 0x7f070175

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 143
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/activities/ReviewDialog;->setCancelable(Z)V

    .line 145
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    const v11, 0x104000a

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/google/android/finsky/activities/ReviewDialog$2;

    invoke-direct {v12, p0, v3}, Lcom/google/android/finsky/activities/ReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    const/high16 v11, 0x104

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/google/android/finsky/activities/ReviewDialog$3;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/activities/ReviewDialog$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    new-instance v12, Lcom/google/android/finsky/activities/ReviewDialog$4;

    invoke-direct {v12, p0, v8}, Lcom/google/android/finsky/activities/ReviewDialog$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11

    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v4           #inflationContext:Landroid/content/Context;
    .end local v8           #ratingDescription:Landroid/widget/TextView;
    .end local v9           #ratingSetterFrame:Landroid/view/View;
    .end local v10           #source:Landroid/os/Bundle;
    :cond_0
    move-object v10, v1

    .line 115
    goto/16 :goto_0

    .restart local v0       #alert:Landroid/app/AlertDialog$Builder;
    .restart local v10       #source:Landroid/os/Bundle;
    :cond_1
    move-object v4, v2

    .line 123
    goto/16 :goto_1

    .line 138
    .restart local v4       #inflationContext:Landroid/content/Context;
    .restart local v8       #ratingDescription:Landroid/widget/TextView;
    .restart local v9       #ratingSetterFrame:Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v11, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 181
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 225
    const-string v0, "previous_rating"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "previous_title"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "previous_comment"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V

    .line 187
    return-void
.end method
