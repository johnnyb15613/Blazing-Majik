.class public Lcom/google/android/finsky/adapters/ReviewsAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "ReviewsAdapter.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ReviewsAdapter$2;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;,
        Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    }
.end annotation


# instance fields
.field private final mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

.field private mHeaderVisible:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V
    .locals 3
    .parameter "context"
    .parameter "doc"
    .parameter "reviews"
    .parameter "ratingHandler"
    .parameter "filterHandler"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->inErrorState()Z

    move-result v1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 66
    iput-object p3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 69
    iput-object p4, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    .line 70
    iput-object p5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ReviewsAdapter;)Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mRatingHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;

    return-object v0
.end method

.method private bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V
    .locals 5
    .parameter "view"
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 249
    invoke-virtual {p0, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v1

    .line 251
    .local v1, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 253
    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->canRateReview(I)Z

    move-result v0

    .line 254
    .local v0, canRateReview:Z
    if-eqz v0, :cond_2

    .line 255
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    new-instance v3, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/finsky/adapters/ReviewsAdapter$1;-><init>(Lcom/google/android/finsky/adapters/ReviewsAdapter;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setRateReviewClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->hasReplyText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iput-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    .line 268
    iput-object v4, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyStub:Landroid/view/ViewStub;

    .line 270
    :cond_0
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Rev$Review;)V

    .line 276
    :cond_1
    :goto_1
    return-void

    .line 262
    :cond_2
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setRateReviewClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p2, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewReplyLayout:Lcom/google/android/finsky/layout/ReviewReplyLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ReviewReplyLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private filtersVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 223
    .end local p1
    :goto_0
    return-object p1

    .line 218
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    const v1, 0x7f0400f6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, v1

    .line 221
    .end local p1
    .local v0, filtersView:Lcom/google/android/finsky/layout/ReviewsControlContainer;
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mFilterHandler:Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ReviewsControlContainer;->setFilterHandler(Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V

    move-object p1, v0

    .line 223
    goto :goto_0

    .line 218
    .end local v0           #filtersView:Lcom/google/android/finsky/layout/ReviewsControlContainer;
    .restart local p1
    :cond_1
    check-cast p1, Lcom/google/android/finsky/layout/ReviewsControlContainer;

    move-object v0, p1

    goto :goto_1
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    if-nez p1, :cond_0

    const v1, 0x7f0400f7

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    .line 197
    .end local p1
    .local v0, headerView:Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f07014f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    return-object v0

    .line 195
    .end local v0           #headerView:Landroid/widget/TextView;
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    move-object v0, p1

    goto :goto_0
.end method

.method private getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 234
    if-nez p2, :cond_0

    .line 235
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .line 240
    .local v0, holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    .restart local v0       #holder:Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->bindItemView(Landroid/view/View;Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;I)V

    .line 245
    return-object p2
.end method

.method private getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 227
    if-nez p1, :cond_0

    const v1, 0x7f0400f9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, result:Landroid/view/View;
    :goto_0
    return-object v0

    .end local v0           #result:Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 227
    goto :goto_0
.end method

.method private getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 211
    .end local p1
    :goto_0
    return-object p1

    .line 207
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    const v1, 0x7f0400fa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, v1

    .line 210
    .end local p1
    .local v0, statsView:Lcom/google/android/finsky/layout/HistogramView;
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HistogramView;->bind(Lcom/google/android/finsky/api/model/Document;)V

    move-object p1, v0

    .line 211
    goto :goto_0

    .line 207
    .end local v0           #statsView:Lcom/google/android/finsky/layout/HistogramView;
    .restart local p1
    :cond_1
    check-cast p1, Lcom/google/android/finsky/layout/HistogramView;

    move-object v0, p1

    goto :goto_1
.end method

.method private statsVisible()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasReviewHistogramData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    .line 76
    .local v0, result:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_4

    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 91
    :cond_3
    :goto_0
    return v0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirstReviewViewIndex()I
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 179
    const/4 v0, -0x1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 182
    .local v0, firstReviewView:I
    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v1, :cond_2

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItem(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_1

    move v0, v1

    .line 102
    .local v0, isLastRow:Z
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    .line 138
    :cond_0
    :goto_1
    return v1

    .end local v0           #isLastRow:Z
    :cond_1
    move v0, v2

    .line 101
    goto :goto_0

    .line 107
    .restart local v0       #isLastRow:Z
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    if-eqz v2, :cond_3

    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 110
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->statsVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    add-int/lit8 p1, p1, -0x1

    .line 118
    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->filtersVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    .line 119
    const/4 v1, 0x2

    goto :goto_1

    .line 122
    :cond_6
    if-eqz v0, :cond_9

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    .line 127
    :cond_8
    sget-object v1, Lcom/google/android/finsky/adapters/ReviewsAdapter$2;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v3

    .line 129
    goto :goto_1

    .line 131
    :pswitch_1
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_2
    move v1, v4

    .line 133
    goto :goto_1

    :cond_9
    move v1, v4

    .line 138
    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeReviews;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for getView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    .line 155
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getStatisticsView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFiltersView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getNoMatchingView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 161
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v0

    .line 162
    .local v0, offset:I
    sub-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 164
    .end local v0           #offset:I
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 166
    :pswitch_6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x7

    return v0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 311
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    .line 316
    return-void
.end method

.method protected retryLoadingItems()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->retryLoadItems()V

    .line 291
    return-void
.end method

.method public setHeaderVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter;->mHeaderVisible:Z

    .line 320
    return-void
.end method
