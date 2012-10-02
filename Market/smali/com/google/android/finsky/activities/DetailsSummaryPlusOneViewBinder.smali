.class public Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryPlusOneViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$2;,
        Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

.field private static final sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private mCirclesPeopleCount:I

.field private mContext:Landroid/content/Context;

.field private mCookie:Ljava/lang/String;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mFirstFriendName:Ljava/lang/String;

.field private mHasPlusOneData:Z

.field private mIsWaitingServerResponse:Z

.field private mLayout:Landroid/view/View;

.field private mSetByUser:Z

.field private mTotal:J

.field private mUrl:Ljava/lang/String;

.field private mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    .line 71
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->handleClick()V

    return-void
.end method

.method private bindPlusOneButton()V
    .locals 3

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    :goto_0
    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 167
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 169
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, plusOneBar:Landroid/view/View;
    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void

    .line 166
    .end local v0           #plusOneBar:Landroid/view/View;
    :cond_0
    sget-object v1, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    goto :goto_0
.end method

.method private bindPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;Landroid/os/Bundle;)V
    .locals 3
    .parameter "docData"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 101
    if-eqz p2, :cond_1

    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    .line 103
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "PlusOneViewBinder.setByUser"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    .line 105
    const-string v0, "PlusOneViewBinder.total"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    .line 106
    const-string v0, "PlusOneViewBinder.circlesPeopleCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCirclesPeopleCount:I

    .line 107
    const-string v0, "PlusOneViewBinder.firstFriendName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-nez p1, :cond_2

    .line 110
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    .line 113
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    .line 114
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    .line 115
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCirclesPeopleCount:I

    .line 116
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCirclesPeopleCount:I

    if-gtz v0, :cond_3

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    goto :goto_0
.end method

.method private bindPlusOneLegend()V
    .locals 13

    .prologue
    const v12, 0x7f07022f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 233
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v9, 0x7f0800f1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 234
    .local v5, legendView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    sget-object v9, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    if-ne v8, v9, :cond_0

    .line 235
    const v6, 0x7f070227

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 293
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    sget-object v9, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    if-ne v8, v9, :cond_1

    move v4, v6

    .line 242
    .local v4, isSetByUser:Z
    :goto_1
    iget-wide v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    if-nez v4, :cond_2

    .line 243
    const v6, 0x7f070228

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .end local v4           #isSetByUser:Z
    :cond_1
    move v4, v7

    .line 239
    goto :goto_1

    .line 248
    .restart local v4       #isSetByUser:Z
    :cond_2
    iget-wide v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    if-eqz v4, :cond_3

    .line 249
    const v6, 0x7f070229

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 253
    :cond_3
    iget v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCirclesPeopleCount:I

    .line 254
    .local v0, countInCircles:I
    if-nez v0, :cond_4

    .line 257
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    invoke-static {v8, v9, v10, v12}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, formattedTotalCount:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0002

    iget-wide v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    long-to-int v10, v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v8, v9, v10, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, formattedLegend:Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    .end local v2           #formattedLegend:Ljava/lang/String;
    .end local v3           #formattedTotalCount:Ljava/lang/String;
    :cond_4
    if-ne v0, v6, :cond_5

    if-nez v4, :cond_5

    .line 269
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07022a

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    aput-object v10, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :cond_5
    if-ne v0, v6, :cond_6

    if-eqz v4, :cond_6

    .line 276
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07022b

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    aput-object v10, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 285
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    int-to-long v9, v0

    invoke-static {v8, v9, v10, v12}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, formattedCircleCount:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0003

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    aput-object v11, v10, v7

    aput-object v1, v10, v6

    invoke-virtual {v8, v9, v0, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2       #formattedLegend:Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static formatPlusOneCount(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"
    .parameter "formatterId"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a

    .line 304
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_0
    return-object v3

    .line 308
    :cond_0
    long-to-float v0, p1

    .line 309
    .local v0, result:F
    const v1, 0x7f07022d

    .line 310
    .local v1, suffix:I
    div-float/2addr v0, v5

    .line 312
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 313
    const v1, 0x7f07022e

    .line 314
    div-float/2addr v0, v5

    .line 317
    :cond_1
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 318
    sget-object v3, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sSingleFractionDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, value:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 320
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->sAllIntegerDigitFormatter:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private getAnalyticsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plusOne?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x1

    .line 183
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCookie:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->getAnalyticsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    if-eqz v0, :cond_0

    .line 186
    iget-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    .line 192
    :goto_0
    invoke-direct {p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->On:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    :goto_1
    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 194
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    invoke-interface {v0, v1, v2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->setPlusOne(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 196
    return-void

    .line 189
    :cond_0
    iget-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    .line 190
    iput-boolean v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Off:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    goto :goto_1
.end method

.method private setLoading(Z)V
    .locals 2
    .parameter "isLoading"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    return-void

    .line 228
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private syncButtonState()V
    .locals 4

    .prologue
    const v1, 0x7f0200a6

    .line 143
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 145
    .local v0, plusOneButton:Landroid/widget/ImageView;
    sget-object v2, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$2;->$SwitchMap$com$google$android$finsky$activities$DetailsSummaryPlusOneViewBinder$PlusOneButtonState:[I

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0200a9

    goto :goto_1

    .line 151
    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mIsWaitingServerResponse:Z

    if-eqz v2, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0200a8

    goto :goto_2

    .line 155
    :pswitch_2
    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private syncContentDescription()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, plusOneBar:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, legendView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ZLandroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "document"
    .parameter "hasDetailsLoaded"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    .line 89
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 91
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasPlusOneData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneData(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->rebindViews()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "dfeApi"
    .parameter "url"
    .parameter "cookie"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 82
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCookie:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    .line 301
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 217
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;->Error:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUserState:Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder$PlusOneButtonState;

    .line 218
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncButtonState()V

    .line 219
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneLegend()V

    .line 220
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncContentDescription()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->setLoading(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->rebindViews()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->onResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)V

    return-void
.end method

.method public rebindViews()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneButton()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->bindPlusOneLegend()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->syncContentDescription()V

    .line 130
    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 133
    const-string v0, "PlusOneViewBinder.hasPlusOneData"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mHasPlusOneData:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "PlusOneViewBinder.setByUser"

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mSetByUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v0, "PlusOneViewBinder.total"

    iget-wide v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mTotal:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    const-string v0, "PlusOneViewBinder.circlesPeopleCount"

    iget v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mCirclesPeopleCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v0, "PlusOneViewBinder.firstFriendName"

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryPlusOneViewBinder;->mFirstFriendName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method
