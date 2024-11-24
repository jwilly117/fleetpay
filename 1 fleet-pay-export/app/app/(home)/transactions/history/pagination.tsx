"use client";

import { Pagination } from "flowbite-react";
import { useRouter } from "next/navigation";
import { PaginationMetadata } from "../../../../src/models/pagination_metadata";

export function CustomPagination({
  metadata,
}: {
  metadata: PaginationMetadata;
}) {
  const { size, page, total } = metadata;
  const router = useRouter();

  return (
    <div className="flex">
      <p className="flex-1 ml-1 text-gray-500 justify-center self-center">
        Showing {size * (page - 1) + 1} - {Math.min(size * page, total)} out of{" "}
        {total} records
      </p>

      {metadata.next || metadata.previous ? (
        <Pagination
          currentPage={page}
          showIcons
          layout="navigation"
          onPageChange={(newPage) => {
            let { pathname, search } = window.location;
            if (search.includes("page="))
              search = search.replaceAll(`page=${page}`, `page=${newPage}`);
            else search += `?page=${newPage}`;
            router.push(`${pathname}${search}`);
          }}
          totalPages={Math.ceil(total / size)}
        />
      ) : (
        <></>
      )}
    </div>
  );
}
