// Filter comments by specific user inside lookup result
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "_id",
            foreignField: "movie_id",
            as: "movie_comments"
        }
    },
    {
        $project: {
            _id: 0,
            title: 1,
            comments: {
                $filter: {
                    input: "$movie_comments",
                    as: "comment",
                    cond: { $eq: ["$$comment.name", "Mercedes Tyler"] }
                }
            }
        }
    }
]);

// Unwind lookup results to get one document per comment
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "_id",
            foreignField: "movie_id",
            as: "comment_data"
        }
    },
    { $unwind: "$comment_data" },
    {
        $project: {
            _id: 0,
            title: 1,
            comment: "$comment_data.text",
            user: "$comment_data.name"
        }
    }
]);

// Show latest comment per movie using $sortArray
db.movies.aggregate([
    {
        $lookup: {
            from: "comments",
            localField: "_id",
            foreignField: "movie_id",
            as: "movie_comments"
        }
    },
    {
        $project: {
            _id: 0,
            title: 1,
            latestComment: {
                $arrayElemAt: [
                    {
                        $sortArray: {
                            input: "$movie_comments",
                            sortBy: { date: -1 }
                        }
                    },
                    0
                ]
            }
        }
    }
]);
